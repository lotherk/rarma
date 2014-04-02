module Rarma::SQF::Compiler::Processor::Class
  def process_class exp
    $CLASSLOADER ||= {}
    name = exp.shift
    if name.is_a? Sexp
      a = self.class.new
      a.process name
      name = a.script.join("_")
    else
      name = name.to_s
    end
    @current_class = name
    inherit = exp.shift
    body = []
    while exp.count > 0
      a = self.class.new
      a.current_class=@current_class
      a.process exp.shift
      @current_class = a.current_class
      body << a.script
    end
    if inherit.nil?
      @script << "CLASS(\"%s\")\n" % @current_class
    else
      a = self.class.new
      a.process inherit
      inherit = a.script.join("")
      if $CLASSLOADER[inherit.to_s]
        inherit = $CLASSLOADER[inherit.to_s]
      end
      @script << "CLASS_EXTEND(\"%s\", \"%s\")\n" % [@current_class, inherit]
    end
    @script << body.join("\n")
    @script << "ENDCLASS\n"
    $CLASSLOADER[name.to_s] = @current_class
    @current_class = nil
    exp
  end
end
