module Rarma::Compiler::Processor::Str
  # process string
  def process_str exp
    Rarma.logger.debug exp.to_s
    #@result << "([\"new\", \"#{exp.shift}\"] call RarmaLib_String)"
    @result << "\"#{exp.shift.to_s}\""
    exp
  end
end
