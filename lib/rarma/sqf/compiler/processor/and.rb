module Rarma::SQF::Compiler::Processor::And
  def process_and exp
    Rarma.logger.debug "#{self} Processing and #{exp}"
    res = []
    while exp.count > 0
      a = self.class.new
      a.process exp.shift
      a.script.each do |c|
        unless ["true","false"].include?c
          c = "{ #{c} }" unless c.match(/(^{|}$)/)
        end
        res << c
      end
    end
    #@script << results.join(" and ")
    @script << res.flatten.join(" and ")
    exp
  end
end
