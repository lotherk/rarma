module Rarma::SQF::Compiler::Processor::And
  def process_and exp
    Rarma.logger.debug "#{self} Processing and #{exp}"
    res = []
    while exp.count > 0
      a = self.class.new
      a.process exp.shift
      a.script.each do |c|
        res << c
      end
    end
    #@script << results.join(" and ")
    @script << res.join(" && ")
    exp
  end
end
