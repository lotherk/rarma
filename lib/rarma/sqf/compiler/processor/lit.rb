module Rarma::SQF::Compiler::Processor::Lit
  def process_lit exp
    check_comments exp
    Rarma.logger.debug "lit: #{exp}"
    @script << "#{exp.shift}"
    exp
  end
end
