require "securerandom"
module Rarma::SQF::Compiler::Processor::Op_asgn_or
  def process_op_asgn_or exp
    a = self.class.new
    a.process exp.shift
    left = a.script.join("\n")
    a = self.class.new
    a.process exp.shift
    right = a.script.join("\n")
    rvar = "_pls_fix_macro_#{SecureRandom.hex}"
    @script << <<-SQF
      private "#{rvar}"
      #{rvar} = #{left}
      if(isNil "#{rvar}") then {
          #{right}
      }
    SQF
    exp
  end
end
