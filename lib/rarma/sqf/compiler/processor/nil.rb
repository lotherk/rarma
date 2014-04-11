module Rarma::SQF::Compiler::Processor::Nil
  def process_nil exp
    @script << 'nil'
    s()
  end
end
