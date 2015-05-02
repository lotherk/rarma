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
    while exp.count > 0
      process_body.process exp.shift
    end
    puts method.inspect
    @result << "%s = {" % method.name
    @result << "private [\"%s\"]" % process_body.scope.private_variables.values.join('","') if process_body.scope.private_variables.count > 0
    @result << process_body.result.flatten
    @result << "}"
    @scope.add method
    exp
  end
end
