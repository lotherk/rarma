module Rarma::Compiler::Processor::Call
  # process method call
  def process_call exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    if left.is_a? Sexp
      left_processor = self.class.new
      left_processor.scope = @scope
      left_processor.process left
      left = left_processor.result.shift
    end

    operands = ["+", "-", "-=", "+=", "!=", "==", "*", "*=", "/", "/=", "%", "<=", ">=", "<", ">"]

    funcname = exp.shift

    # call to a variable i.e. array access.
    # check variable name and return
    if left.nil?
      @result << @scope.get_variable(funcname)
      return exp
    end

    processor = self.class.new
    processor.scope = @scope

    # [] means we have an access to a hash/array
    # I still don't know the impact if accessing arrays/hashes through rarmalib,
    # but for now we use it. We assume that 'left' at least is an RarmaLib_Array.
    if funcname.to_s == "[]"
      processor.process exp.shift
      @result << '(["get", %s] call (%s))' % [processor.result.shift, left]
      return exp

    # check if funcname is an operand
    elsif operands.include? funcname.to_s
      processor.process exp.shift
      @result << '(["%s", %s] call  %s)' % [funcname, processor.result.shift, left]
      return exp
    else
      while exp.count > 0
        puts exp.shift
      end
    end
    exp
  end
end
