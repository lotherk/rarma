module Rarma::SQF::Compiler::Processor::Gvar
  def process_gvar exp
    name = exp.shift
    @script <<  name.to_s.gsub(/^\$/, '')
    exp
  end
end
