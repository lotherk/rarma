module Rarma::SQF::Compiler::Processor::Block
  def process_block exp
    while exp.count > 0
      process exp.shift
    end
    exp
  end
end
