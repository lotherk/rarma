module Rarma::SQF::Compiler::Processor::Const
  def process_const exp
   @script << exp.shift.to_s
   exp
  end
end
