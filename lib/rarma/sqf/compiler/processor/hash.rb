module Rarma::SQF::Compiler::Processor::Hash
  def process_hash exp
    Rarma.logger.debug "#{self} Processing hash #{exp}"
    scope = self.class.new
    kv = []
    while exp.count > 0
      key = exp.shift
      val = exp.shift
      kscope = self.class.new
      vscope = self.class.new
      kscope.process key
      vscope.process val

      kv << "[#{kscope.script[0]}, #{vscope.script[0]}]"
      Rarma.logger.debug "  Key #{kscope.script} => #{vscope.script}"
    end
    @script << "[\"new\", [#{kv.join(", ")}]] call Hash"
    Rarma.logger.debug "#{self} End of hash"
    exp 
  end
end
