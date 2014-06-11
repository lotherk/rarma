module Rarma::SQF::Compiler::Processor::Gasgn
  def process_gasgn exp
    Rarma.logger.debug "#{self} Processing asgn #{exp}"
    name = exp.shift
    name = name.to_s.gsub(/^\$/, '')
    a = self.class.new
    while exp.count > 0
      a.process exp.shift
    end
    val = a.script.join("")
    val = "nil" if val.empty?
    @script << '%s = %s' % [name, val]
#    @script << 'publicVariable "%s"' % name
    exp
  end
end
