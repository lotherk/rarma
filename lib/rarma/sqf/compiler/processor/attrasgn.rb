module Rarma::SQF::Compiler::Processor::Attrasgn
  def process_attrasgn exp
    # add something to hash.
    obj = exp.shift
    attr = exp.shift
    val = exp.shift
    a = self.class.new
    a.process obj
    obj = a.script.join("")
    a = self.class.new
    a.process val
    val = a.script.join("")
    if attr.to_s == "[]="
      a = self.class.new
      a.process exp.shift
      @script << '(["set", [%s,%s]] call %s)' % [val, a.script.join(""), obj]
    else
      @script << '(["%s", [%s]] call %s)' % [attr, val, obj]
    end
    require 'pp'
    while exp.count > 0
      exp.shift
    end
    s()
  end
end
