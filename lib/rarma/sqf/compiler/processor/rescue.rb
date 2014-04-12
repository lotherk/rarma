module Rarma::SQF::Compiler::Processor::Rescue
  def process_rescue exp
    block = exp.shift
    a = self.class.new
    a.process block
    block = a.script
    rescues = []
    while exp.count > 0
      resc = exp.shift
      a = self.class.new
      a.process resc
      rescues << a.script
    end
    exp
  end
end
