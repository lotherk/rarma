module Rarma::Compiler::Processor::Module
  # process module_scope call
  def process_module exp
    Rarma.logger.debug exp.to_s
    module_scope = new_scope :module
    scope.add_module module_scope

    module_scope.name = exp.shift

    # process params
    processor = new_processor
    processor.scope = module_scope
    processor.process exp.shift while exp.count > 0

    exp
  end
end
