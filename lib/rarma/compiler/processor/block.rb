module Rarma::Compiler::Processor::Block
  # process block
  def process_block exp
    Rarma.logger.debug exp.to_s
    block_processor = self.class.new
    block_processor.process exp.shift
    @scope.add block.procesor.scope
    @result << block_processor.result
    exp
  end
end
