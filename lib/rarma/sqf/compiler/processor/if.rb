module Rarma::SQF::Compiler::Processor::If
  def process_if exp
    Rarma.logger.debug "#{self} Processing if #{exp}"
    a = self.class.new
    a.process exp.shift
    condition = a.script.join("")
    a = self.class.new
    n = exp.shift
    a.process n if n
    if_body = []
    if_body = a.script if n
    else_body = []
    els = exp.shift
    if els
      # else?
      a = self.class.new
      a.process els
      if a.script.count > 0
        else_body = a.script.flatten.compact
      end
    end
    if if_body.flatten.count == 0 and else_body.flatten.count > 0
      # unless
      @script << "if (!%s) then {" % condition
      @script << else_body
    elsif if_body.flatten.count > 0
      # if
      @script << "if (%s) then {" % condition
      @script << if_body
      if else_body.count > 0
        # else
        @script << "} else {"
        @script << else_body
      end
    end
    @script << "}"
    exp
  end
end
