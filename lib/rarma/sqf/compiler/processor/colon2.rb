module Rarma::SQF::Compiler::Processor::Colon2
  def process_colon2 exp
    result = []
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        a = self.class.new
        a.process cur
        result << a.script
      else
        result << cur
      end
    end
    @script << result.flatten.join("_")
    exp
  end
end
