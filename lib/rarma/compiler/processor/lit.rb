module Rarma::Compiler::Processor::Lit
  # process lit TODO
  def process_lit exp
    Rarma.logger.debug exp.to_s
    #@result << "([\"new\", #{exp.shift}] call RarmaLib_Number)"
    @result << exp.shift.to_s
    exp
  end
end
