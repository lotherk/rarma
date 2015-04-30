module Rarma::Compiler::Processor::Call
  # process method call
  def process_call exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    Rarma.logger.debug "left is #{left} #{left.class}"
    if left.is_a? Sexp
      left_processor = self.class.new
      left_processor.process left
      left = left_processor.result.shift
    end
    Rarma.logger.debug "left is #{left} #{left.class}"

    operands = ["+", "-", "-=", "+=", "!=", "==", "*", "*=", "/", "/=", "%", "<=", ">=", "<", ">"]

    funcname = exp.shift
    Rarma.logger.debug "funcname is #{funcname} #{funcname.class}"

    # [] means we have an access to a hash/array
    # I still don't know the impact if accessing arrays/hashes through rarmalib,
    # but for now we use it. We assume that 'left' at least is an RarmaLib_Array.
    if funcname.to_s == "[]"
      processor = self.class.new
      processor.process exp.shift
      @result << '(["get", %s] call %s)' % [processor.result.shift, left]

    # check if funcname is an operand
    elsif operands.include? funcname.to_s
      processor = self.class.new
      processor.process exp.shift
      @result << '(%s %s %s)' % [left, funcname, processor.result.shift]

    else
      while exp.count > 0
        puts exp.shift
      end
    end
    puts exp
    exp
  end
end
