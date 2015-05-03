module Rarma::Compiler::Processor::Defn
  # process method definition
  def process_defn exp
    # add comments
    add_comments(exp.comments) if exp.comments
    Rarma.logger.debug exp.to_s

    # create an own scope for a method.
    method = Rarma::Compiler::Scope::Method.new(self)
    @scope.add_method method # add scope to parent scope

    method.name = exp.shift

    # process params
    params = exp.shift
    processor = new_processor
    processor.process params

    # rest in exp is method body
    method.body_exp = exp

    exp
  end
end
