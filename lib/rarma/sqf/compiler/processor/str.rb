module Rarma::SQF::Compiler::Processor::Str
  def process_str exp
    @script << "\"#{exp.shift}\""
    exp
  end
end
