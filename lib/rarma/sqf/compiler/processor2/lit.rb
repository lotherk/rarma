module Rarma::SQF::Compiler::Processor::Lit
  def process_lit exp
    Rarma.logger.debug "lit: #{exp}"
    @script << "#{exp.shift}"
    exp
  end
end
