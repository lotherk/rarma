module Rarma::SQF::Compiler::Processor::Preprocessor
  def process_preprocessor_classname exp
    a = self.class.new
    a.process exp.shift
    @current_class = a.script.join("_")
  end

  def process_preprocessor_native exp
    $natives ||= []
    $natives << exp.shift[1] rescue $native_next=true
  end
end
