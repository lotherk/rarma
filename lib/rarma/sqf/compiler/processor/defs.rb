module Rarma::SQF::Compiler::Processor::Defs
  def process_defs exp
  Rarma.logger.debug "#{self} Processing defs #{exp}"
    exp.shift
    name = exp.shift.to_s
    if name !~ /^[A-Za-z0-9]*$/
      m = name.match(/^[A-Za-z0-9]*/).to_s
      chars = name.gsub(/#{m}/, '')
      unless @current_class.is_a?Rarma::SQF::Compiler::Script::Class
         if name !~ /^[A-Za-z0-9]*$/
           m = name.match(/^[A-Za-z0-9]*/).to_s
           chars = name.gsub(/#{m}/, '')
           repl = case chars
                   when "?"
                     "_"
                   when "!"
                     "__"
                   else
                     "___"
                  end
           name = name.gsub("#{chars}", repl)
         end
       end
    end
    args = exp.shift
    $natives ||= []
    if $native_next
      $natives << name
      $native_next = false
    end
    @meth = {}
    @meth[:name] = name
    @meth[:aliases] = []
    $aliases.each do |a|
      @meth[:aliases] << a
    end rescue nil
    $aliases=nil
    @meth[:body] = []
    process args

    a = self.class.new
    a.current_class=@current_class
    while exp.count > 0
      a.process exp.shift
    end
    body = a.script.join("\n")
    if $natives.include?name
      body = body.strip.gsub(/\A"/, '').gsub(/"\z/, '')
      $natives.delete(name)
    end
    @meth[:body] = Rarma::SQF::Compiler::Script.indent(body.split("\n"))
    if @current_class
      @current_class.meths << @meth
    else
      Rarma::SQF::Compiler::Script.get_instance.functions << @meth
    end
    exp 
  end
end
