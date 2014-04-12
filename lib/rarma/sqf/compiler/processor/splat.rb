module Rarma::SQF::Compiler::Processor::Splat
  def process_splat exp
    name = exp.shift[1]
    @script << '["to_a"] call %s' % name
    exp
  end
end
