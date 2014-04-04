module Rarma::SQF::Compiler::Processor::Self
  def process_self exp
    @script << '_class'
    s()
  end
end
