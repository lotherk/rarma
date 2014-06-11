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
    $VARIABLES ||= []
    if name !~ /^_/
      Rarma.logger.warn "Assigned variable #{name} should be private!"
#      name = "_#{name}"
    end
    if ! $VARIABLES.include?name
      $VARIABLES << name
#      @script << 'private "%s"' % name
    end
    @script << '%s = %s' % [name, value]
    s()
  end
end
