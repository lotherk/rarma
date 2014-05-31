module Rarma::SQF::Compiler::Processor::Const
  def process_const exp
   const = exp.shift.to_s
   Rarma.logger.debug const
   @script << const
   exp
  end
end
