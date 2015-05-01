module Rarma::Compiler::Processor::Block
  # process block
  def process_block exp
    Rarma.logger.debug exp.to_s
    block_processor = self.class.new
    @scope.add block_processor.scope
    block_processor.process exp.shift while exp.count > 0
    block_processor.scope.variables.each do |var|
      @result << "private [\"%s\"]" % block_processor.scope.variables.values.join('","')
    end
    @result << block_processor.result
    exp
  end
end
