require "securerandom"
module Rarma::SQF::Compiler::Processor::Iasgn
  def process_iasgn exp
    Rarma.logger.debug "#{self} Processing asgn #{exp}"
    name = exp.shift
    name = name.to_s.gsub(/^@/, '__')
    a = self.class.new
    while exp.count > 0
      a.process exp.shift
    end
    val = a.script.join("")
    val = "nil" if val.empty?
    if val =~ /(\[|\])/
      rval = "_pls_fix_macro_#{SecureRandom.hex}"
      @script << 'private "%s"; %s = %s' % [rval, rval, val]
      val = rval
    end
    @script << 'MEMBER("%s", %s)' % [name, val]
    exp
  end
end
