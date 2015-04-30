module Rarma::Compiler::Processor::Defn
  # process method definition
  def process_defn exp
    Rarma.logger.debug exp.to_s
    method = Rarma::Compiler::Method.new
    method.name = exp.shift

    # process params
    params = exp.shift
    process_params = self.class.new
    process_params.scope = method
    process_params.process params

    # rest in exp is method body
    process_body = self.class.new
    process_body.scope = method
    while exp.count > 0
      process_body.process exp.shift
    end
    puts method.inspect

    @scope.add method
    exp
  end
end
