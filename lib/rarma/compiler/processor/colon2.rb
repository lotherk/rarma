module Rarma::Compiler::Processor::Colon2
  # process colon2
  def process_colon2 exp
    Rarma.logger.debug exp.to_s
    last = exp.pop.to_s
    processor = new_processor
    while exp.count > 0
      processor.process exp.shift
    end
    @result << '%s_%s' % [processor.result.join("_"), last]
    exp
  end
end
