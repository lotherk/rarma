module Rarma::Compiler::Processor::Lvar
  # processing lvar TODO
  def process_lvar exp
    Rarma.logger.debug exp.to_s
    lvar = exp.shift
    @result << @scope.get_variable(lvar.to_sym)
    exp
  end
end
