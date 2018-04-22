module Rarma::Compiler::Processor::Defn
  # process method definition
  def process_defn exp
    # add comments
    add_comments(exp.comments) if exp.comments
    Rarma.logger.debug exp.to_s

    # create an own scope for a method.
    method = new_scope :method
    scope.add_method method

    method.name = exp.shift

    # process params
    processor = new_processor
    processor.scope = method
    processor.process exp.shift

    # rest in exp is method body, do not process yet.
    method.body_exp exp.shift

    exp
  end
end
