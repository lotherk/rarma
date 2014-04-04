module Rarma::SQF::Compiler::Processor::Defn
  def process_defn exp
  Rarma.logger.debug "#{self} Processing defn #{exp}"
    name = exp.shift
    args = exp.shift
    argsc = args.count
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
    body = a.script.pop
    type = ''
    type = 'any' if argsc >= 2

    if @current_class
      @script << 'PUBLIC FUNCTION("%s", "%s") {' % [type, name]
    else
      @script << "#{name} = {"
    end
    @script << args
    @script << a.script
    if $natives.include?name
      @script << body.gsub(/\A"/, '').gsub(/"\z/, '')
      $natives.delete(name)
    else
      @script << body
    end
    @script << "}"
    exp 
  end
end
