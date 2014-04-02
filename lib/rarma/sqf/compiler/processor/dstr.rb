module Rarma::SQF::Compiler::Processor::Dstr
  def process_dstr exp
    Rarma.logger.debug "#{self} Processing DSTR #{exp}"
    results = []
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        a = self.class.new
        a.process cur
        results << a.script.join("")
      else
        results << '"%s"' % cur
      end
    end
    line = []
    args = []
    c = 1
    results.each do |s|
      if s.match(/^".*"$/)
        line << s.gsub(/^"/, '').gsub(/"$/, '')
      else
        line << "%#{c}"
        args << s
        c += 1
      end
    end
    format = []
    format << '"%s"' % line.join("")
    format << args.join(", ")

    @script << '(format[%s])' % format.join(", ")
    exp
  end
end
