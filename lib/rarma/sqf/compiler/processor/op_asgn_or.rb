module Rarma::SQF::Compiler::Processor::Op_asgn_or
  def process_op_asgn_or exp
    a = self.class.new
    a.process exp.shift
    left = a.script.join("\n")
    a = self.class.new
    a.process exp.shift
    right = a.script.join("\n")
    @script << <<-SQF
      if(isNil #{left}) then { #{right} };
    SQF
    exp
  end
end
