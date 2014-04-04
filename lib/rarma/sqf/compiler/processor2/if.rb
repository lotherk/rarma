module Rarma::SQF::Compiler::Processor::If
  def process_if exp
    Rarma.logger.debug "#{self} Processing if #{exp}"
    a = self.class.new
    a.process exp.shift
    condition = a.script.join("")

    a = self.class.new
    n = exp.shift
    a.process n if n
    @script << "if (%s) then {\n" % condition
    @script << a.script.join("")

    els = exp.shift
    if els
      # else?
      a = self.class.new
      a.process els
      if a.script.count > 0
        @script << "\n} else {\n"
        @script << a.script.join("")
      end
    end
    @script << "\n}\n"
    exp
  end
end
