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

    # lazy loading
    cond=[]
    condition.split(" && ").each_with_index do |an, i|
      ors = []
      spl = an.split(" || ")
      spl.each_with_index do |o, y|
          ors << make_lazy(o)
      end if spl.count > 1
      if ors.count > 0
        cond << ors.join(" || ")
      else
        cond << make_lazy(an)
      end

    end
    condition = cond.join(" && ")
    #
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
    else
      @script << "if (%s) then {" % condition
      @script << if_body
    end
    @script << "}"
    exp
  end

  def make_lazy s
    unless @lazied
      @lazied = true
      return s
    end
    "{ #{s} }"
  end
end
