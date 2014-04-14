module Rarma::SQF::Compiler::Processor::Self
  def process_self exp
    if $current_class.is_a?Rarma::SQF::Compiler::Script::Class
      @script << '(call compile GETVAR("__self"))'
    elsif $current_class.is_a?Rarma::SQF::Compiler::Script::Module
      @script <<  @current_class
    else
      raise "Can not handle self outside of a class or a module"
    end
    s()
  end
end
