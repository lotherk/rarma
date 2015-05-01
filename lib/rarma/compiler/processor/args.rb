module Rarma::Compiler::Processor::Args
  # process method args
  def process_args exp
    Rarma.logger.debug @scope.inspect
    Rarma.logger.debug exp.to_s

    sig = []

    while exp.count > 0
      # process each element
      e = exp.shift
      unless e.is_a?Symbol
        processor = self.class.new
        processor.scope = @scope
        processor.process e
        sig
      else
        sig << { e.to_s => nil }
      end
    end
    exp
  end
end
