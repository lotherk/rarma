module Rarma::SQF::Compiler::Processor::Defn
  def process_defn exp
  Rarma.logger.debug "#{self} Processing defn #{exp}"
    name = exp.shift.to_s
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
    body = a.script.join("\n") # .pop <- dafuq?
    type = ''
    type = 'any' if argsc >= 2
    @meth = {}
    @meth[:name] = name
    @meth[:aliases] = []
    $aliases.each do |a|
      @meth[:aliases] << a
    end rescue nil
    $aliases=nil
    @meth[:type] = type
    @meth[:sig] = :public # ..
    @meth[:body] = []
    process args

    if $natives.include?name
      body = body.gsub(/\A"/, '').gsub(/"\z/, '')
      $natives.delete(name)
    end
    @meth[:body] = Rarma::SQF::Compiler::Script.indent(body.split("\n"))

    if @current_class
      @current_class.meths << @meth
    else
      Rarma::SQF::Compiler::Script.get_instance.functions << @meth
    end
    # clear variable scope
    $VARIABLES=nil
    exp
  end
end
