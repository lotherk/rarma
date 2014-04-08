module Rarma::SQF::Compiler::Processor::Defs
  def process_defs exp
  Rarma.logger.debug "#{self} Processing defs #{exp}"
    exp.shift
    name = exp.shift
    args = exp.shift
    $natives ||= []
    if $native_next
      $natives << name
      $native_next = false
    end
    a = self.class.new
    a.process args
    args = a.script
    a = self.class.new
    a.current_class=@current_class
    while exp.count > 0
      a.process exp.shift
    end
    body = a.script.join("\n")
    if @current_class
      @script << '%s_fnc_%s = {' % [@current_class, name]
    else
      @script << "#{name} = {"
    end
    @script << args
#    @script << a.script
    if $natives.include?name
      @script << body.strip.gsub(/\A"/, '').gsub(/"\z/, '')
      $natives.delete(name)
    else
      @script << body
    end
    @script << "}"
    exp 
  end
end
