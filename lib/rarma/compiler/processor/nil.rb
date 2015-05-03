module Rarma::Compiler::Processor::Nil
  # process method call
  def process_nil exp
    Rarma.logger.debug exp.to_s
    exp
  end
end
