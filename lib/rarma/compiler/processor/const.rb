module Rarma::Compiler::Processor::Const
  # process method call
  def process_call exp
    Rarma.logger.debug exp.to_s
    @result << exp.shift.to_s
    exp
  end
end
