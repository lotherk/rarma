module Rarma::Compiler::Processor::Dstr
  def process_dstr exp
    Rarma.logger.debug exp.to_s
    processor = self.class.new
    processor.scope = @scope

    while exp.count > 0
      processor.process exp.shift
    end

    exp
  end
end
