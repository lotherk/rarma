module Rarma::SQF::Compiler::Processor::While
  def process_while exp
    condition = exp.shift
    Rarma.logger.debug "While condition: #{condition}"
    a = self.class.new
    a.process condition
    condition = a.script.join("")
    a = self.class.new
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        a.process cur
      else
      end
    end

    @script << "waitUntil {\n"
    @script << a.script.join("\n")
    @script << "(%s)" % condition
    @script << "\n}\n"
    exp
  end
end
