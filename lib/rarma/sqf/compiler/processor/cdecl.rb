module Rarma::SQF::Compiler::Processor::Cdecl
  def process_cdecl exp
    Rarma.logger.debug("#{self} Processing cdecl #{exp}")
    scope = self.class.new
    name = exp.shift
    while exp.count > 0
      scope.process exp.shift
    end
    @script << "#define " + name.to_s + " " + scope.script.join(" ")
    exp
  end
end
