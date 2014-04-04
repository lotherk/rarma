module Rarma::SQF::Compiler::Processor::False
  def process_false exp
    @script << 'false'
    s()
  end
end
