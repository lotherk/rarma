module Rarma::SQF::Compiler::Processor::Ensure
  def process_ensure exp
    resc = exp.shift
    ens = exp.shift
    a = self.class.new
    a.process resc

    b = self.class.new
    b.process ens
    exp
  end
end
