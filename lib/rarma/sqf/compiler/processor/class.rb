module Rarma::SQF::Compiler::Processor::Class
  def process_class exp
    name = exp.shift
    if name.is_a? Sexp
      a = self.class.new
      a.process name
      name = a.script.join("_")
    else
      name = name.to_s
    end
    @current_class = Rarma::SQF::Compiler::Script::Class.new(name)
    $current_class = @current_class
    inherit = exp.shift
    body = []
    while exp.count > 0
      a = self.class.new
      a.current_class=@current_class
      a.process exp.shift
#      @current_class = a.current_class
      body << a.script
    end
    unless inherit.nil?
      a = self.class.new
      a.process inherit
      inherit = a.script.join("")
      @current_class.inherit=inherit.to_s
    end
    Rarma::SQF::Compiler::Script.get_instance.classes << @current_class
    @current_class = nil
    $current_class = nil
    $VARIABLES=nil
    exp
  end
end
