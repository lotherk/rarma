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
    a.current_class=@current_class
    while exp.count > 0
      a.process exp.shift
    end
    body = a.script.pop
    type = ''
    type = 'any' if argsc >= 2
    @meth = {}
    @meth[:name] = name
    @meth[:type] = type
    process args

    if $natives.include?name
      body = body.gsub(/\A"/, '').gsub(/"\z/, '')
      $natives.delete(name)
    end
    @meth[:body] = body

    if @current_class
      @current_class.meths << @meth
    else
      Rarma::SQF::Compiler::Script.get_instance.functions << @meth
    end
    exp
  end
end
