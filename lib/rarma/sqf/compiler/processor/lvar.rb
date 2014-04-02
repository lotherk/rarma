module Rarma::SQF::Compiler::Processor::Lvar
  def process_lvar exp
    Rarma.logger.debug "#{self} Processing lvar #{exp}"
    cur = exp.shift
    @script << "#{cur}"
    Rarma.logger.debug "#{self} End of lvar"
    exp
  end
end
