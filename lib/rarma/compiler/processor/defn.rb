module Rarma::Compiler::Processor::Defn
  # process method definition
  def process_defn exp
    # add comments
    add_comments(exp.comments) if exp.comments
    Rarma.logger.debug exp.to_s
    method = Rarma::Compiler::Scope::Method.new(self)
    method.name = exp.shift

    # process params
    params = exp.shift
    processor = new_processor
    processor.process params

    # rest in exp is method body
    #process_body = new_processor process_params
    while exp.count > 0
      processor.process exp.shift
    end
    @result << "%s = {" % method.name
    # privatize(?) variables.
    @result << "private [\"%s\"]" % processor.scope.private_variables.join('","') if processor.scope.private_variables.count > 0
    counter = 0
    processor.scope.args.each do |arg, data|
      var = processor.scope.get_private_variable(arg)
      val = data[:value]
      @result << '%s = [_this, %s, %s] call BIS_fnc_param' % [var, counter, val]
      counter += 1
    end
    @result << processor.result.flatten
    @result << "}"
    @scope.add_method method
    exp
  end
end
