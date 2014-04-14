module Rarma::SQF::Compiler::Processor::Module
  def process_module exp
    name = exp.shift
    if name.is_a? Sexp
      a = self.class.new
      a.process name
      name = a.script.join("_")
    else
      name = name.to_s
    end
    @current_class = Rarma::SQF::Compiler::Script::Module.new(name)
    $current_class = @current_class
    body = []
    while exp.count > 0
      a = self.class.new
      a.current_class=@current_class
      a.process exp.shift
      #@current_class = a.current_class
      body << a.script
    end
    Rarma::SQF::Compiler::Script.get_instance.modules << @current_class
    @current_class = nil
    $current_class = nil
    $VARIABLES=nil
    exp
  end
end
