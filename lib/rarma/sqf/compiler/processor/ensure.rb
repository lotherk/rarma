module Rarma::SQF::Compiler::Processor::Ensure
  def process_ensure exp
    resc = exp.shift
    ens = exp.shift
    a = self.class.new
    a.process resc
    @script << a.script
    b = self.class.new
    b.process ens
    @script << b.script
    exp
  end
end
