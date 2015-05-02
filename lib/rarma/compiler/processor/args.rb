module Rarma::Compiler::Processor::Args
  # process method args
  def process_args exp
    Rarma.logger.debug exp.to_s

    sig = []

    while exp.count > 0
      # process each element
      e = exp.shift
      unless e.is_a?Symbol
        e.shift #
        lasgn = e.shift
        processor = new_processor
        processor.process e.shift
        @scope.add_arg(lasgn, processor.result.first)
      else
        @scope.add_arg(e.to_s)
      end
    end
    exp
  end
end
