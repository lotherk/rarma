module Rarma::SQF::Compiler::Processor::Lasgn
  def process_lasgn exp
  
    Rarma.logger.debug "#{self} Processing #{exp}"

    name = exp.shift
    value = exp.shift

    if value.is_a? Sexp
      a = self.class.new
      a.process value
      value = a.script.join("")
    else
      value = value.to_s
    end
    @script << '%s = %s' % [name, value]
    s()
  end
end
