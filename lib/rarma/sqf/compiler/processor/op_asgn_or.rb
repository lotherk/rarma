module Rarma::SQF::Compiler::Processor::Op_asgn_or
  def process_op_asgn_or exp
   a = self.class.new
   a.process exp
   raise a.script.join("\n")
   exp
  end
end
