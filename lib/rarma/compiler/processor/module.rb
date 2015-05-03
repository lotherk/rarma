module Rarma::Compiler::Processor::Module
  # process method call
  def process_module exp
    Rarma.logger.debug exp.to_s
    module_scope = new_scope :module
#    @scope.add_module module_scope

    # process name
    name = exp.shift
    if name.is_a?Sexp
      processor = new_processor
      processor.process exp.shift
      module_scope.name = processor.result.shift
    else
      module_scope.name = name.to_s
    end
    # process body
    module_scope.body_exp = exp.shift
    exp
  end
end
