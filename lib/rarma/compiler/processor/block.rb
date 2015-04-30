module Rarma::Compiler::Processor::Block
  # process block
  def process_block exp
    Rarma.logger.debug exp.to_s
    block_processor = self.class.new
    block_processor.process exp.shift while exp.count > 0
    @scope.add block_processor.scope
    @result << block_processor.result
    exp
  end
end
