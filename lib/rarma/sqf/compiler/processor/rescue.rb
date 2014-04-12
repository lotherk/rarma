module Rarma::SQF::Compiler::Processor::Rescue
  def process_rescue exp
    block = exp.shift
    a = self.class.new
    a.process block
    block = a.script
    while exp.count > 0
      exp.shift
    end
    exp
  end
end
