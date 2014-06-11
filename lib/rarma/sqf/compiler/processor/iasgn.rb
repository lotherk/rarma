require "securerandom"
module Rarma::SQF::Compiler::Processor::Iasgn
  def process_iasgn exp
    Rarma.logger.debug "#{self} Processing iasgn #{exp}"
    name = exp.shift
    name = name.to_s.gsub(/^@/, '__')
    a = self.class.new
    while exp.count > 0
      a.process exp.shift
    end
    val = a.script.join("")
    val = "nil" if val.empty?
    if val =~ /(\[|\])/
      rval = "DEF_VAL_#{SecureRandom.hex}"
      @script << '#define %s %s' % [rval, rval, val]
      val = rval
    end
    @script << 'MEMBER("%s", %s); (call compile GETVAR("%s"))' % [name, val, name]
    exp
  end
end
