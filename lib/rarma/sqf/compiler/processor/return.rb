module Rarma::SQF::Compiler::Processor::Return
  def process_return exp
    a = self.class.new
    while exp.count > 0
      a.process exp.shift
    end
    @script << 'if(true) exitWith { %s }' % a.script.join("")
    s()
  end
end
