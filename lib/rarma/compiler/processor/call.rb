module Rarma::Compiler::Processor::Call
  # process method call
  def process_call exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    if left.is_a? Sexp
      left_processor = new_processor
      left_processor.process left
      left = left_processor.result.shift
    end

    operands = ["+", "-", "-=", "+=", "!=", "==", "*", "*=", "/", "/=", "%", "<=", ">=", "<", ">"]
    funcname = exp.shift

    processor = new_processor
    processor.scope = scope
    if left.nil? and exp.count == 0
      @result << scope.get_private_variable(funcname)
      return exp

    # [] means we have an access to a hash/array
    # I still don't know the impact if accessing arrays/hashes through rarmalib,
    # but for now we use it. We assume that 'left' at least is an RarmaLib_Array.
    elsif funcname.to_s == "[]"
      processor.process exp.shift
      @result << '(["get", %s] call (%s))' % [processor.result.shift, left]
      return exp

    # check if funcname is an operand
    elsif operands.include? funcname.to_s
      processor.process exp.shift
      @result << '(["%s", %s] call  %s)' % [funcname, processor.result.shift, left]
      return exp


    # check if funcname is a reserved keyword
    elsif left.nil? and RARMA_COMPILER_KEYWORDS.include? funcname.to_sym
      process_keyword funcname.to_sym, exp

    # common method call
    else
      # process right
      while exp.count > 0
        processor.process exp.shift
      end

      # native sqf method call.
      if left == 'SQF'
        # we need to determine the exact syntax
        # for SQF as there are differences in calling a method
        # with single or multiple parameters. I'm not even sure
        # if there are exceptions. we do the following for now

        if processor.result.count > 1
          if processor.result.count >= 3
            # arg1 method [arg2, arg3]
            @result << '(%s %s [%s])' % [processor.result.shift, funcname, processor.result.join(', ')]
          else
            # arg1 method arg2
            @result << '(%s %s %s)' % [processor.result.shift, funcname, processor.result.shift]
          end
        else
          # method arg1
          @result << '(%s %s)' % [funcname, processor.result.shift]
        end

      # custom method call
      else
        # I think this is wrong, sorry, but for now we expect a "rarma style" environment.
        # we assume left is a rarma object/module.
        if processor.result.count > 1
          @result << '(["%s", %s] call %s)' % [funcname, processor.result.shift, left]
        else
          @result << '(["%s", [%s]] call %s)' % [funcname, processor.result.join(', '), left]
        end
      end

    end
    exp
  end
end
