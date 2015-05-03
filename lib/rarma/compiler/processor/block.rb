module Rarma::Compiler::Processor::Block
  # process block
  def process_block exp
    Rarma.logger.debug "Processing block (script)"
    Rarma.logger.debug exp.to_s
    block_processor = new_processor
    block_processor.process exp.shift while exp.count > 0
    @result << "private [\"%s\"]" % block_processor.scope.private_variables.join('","') if block_processor.scope.private_variables.count > 0
    @result << block_processor.result
    exp
  end
end
