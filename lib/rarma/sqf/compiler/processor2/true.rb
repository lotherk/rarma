module Rarma::SQF::Compiler::Processor::True
  def process_true exp
    @script << 'true'
    s()
  end
end
