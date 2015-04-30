module Rarma::Compiler::Processor::Args
  # process method args
  def process_args exp
    Rarma.logger.debug @scope.inspect
    Rarma.logger.debug exp.to_s
    while exp.count > 0
      # process each element
      processor = self.class.new
      processor.process exp.shift
      @scope.params << processor.result.shift
    end
    exp
  end
end
