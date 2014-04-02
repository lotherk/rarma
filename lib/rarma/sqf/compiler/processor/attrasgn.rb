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
    @script << '(["%s", [%s]] call %s)' % [attr, val, obj]
    require 'pp'
    while exp.count > 0
      exp.shift
    end
    s()
  end
end
