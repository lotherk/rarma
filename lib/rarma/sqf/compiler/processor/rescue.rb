module Rarma::SQF::Compiler::Processor::Rescue
  def process_rescue exp
    raise exp.to_s
    exp
  end
end
