module Rarma::Compiler::Processor::Block
  # process block
  def process_block exp
    Rarma.logger.debug "Processing block (script)"
    Rarma.logger.debug exp.to_s
#    processor = new_processor
    process exp.shift while exp.count > 0
#    @result << "private [\"%s\"]" % processor.scope.private_variables.join('","') if processor.scope.private_variables.count > 0
 #   @result << processor.result
    exp
  end
end
