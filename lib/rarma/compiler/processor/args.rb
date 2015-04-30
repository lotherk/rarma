module Rarma::Compiler::Processor::Args
  # process method args
  def process_args exp
    Rarma.logger.debug @scope.inspect
    Rarma.logger.debug exp.to_s
    while exp.count > 0
      # process each element
      e = exp.shift
      unless e.is_a?Symbol
        processor = self.class.new
        processor.process e
        @scope.params.update processor.result.shift
      else
        @scope.params.update({ e => nil })
      end
    end
    exp
  end
end
