module Rarma::SQF::Compiler::Processor::Splat
  def process_splat exp
    name = exp.shift[1]
    raise name
    exp
  end
end
