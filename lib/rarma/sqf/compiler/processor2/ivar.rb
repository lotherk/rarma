module Rarma::SQF::Compiler::Processor::Ivar
  def process_ivar exp
    name = exp.shift
    @script << 'MEMBER("%s",nil)' % name.to_s
    exp
  end
end
