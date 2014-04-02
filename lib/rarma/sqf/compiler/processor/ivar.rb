module Rarma::SQF::Compiler::Processor::Ivar
  def process_ivar exp
    name = exp.shift
    @script << 'FUNC_GETVAR("%s")' % name.to_s
    exp
  end
end
