module Rarma::SQF::Compiler::Processor::Ivar
  def process_ivar exp
    name = exp.shift
    @script << '(call compile GETVAR("%s"))' % name.to_s.gsub(/^\@/, '')
    exp
  end
end
