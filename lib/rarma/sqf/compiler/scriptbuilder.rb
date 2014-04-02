require 'ruby_parser'
require 'rarma/sqf'
#require 'rarma/sqf/compiler/script'
class Rarma::SQF::Compiler::ScriptBuilder
  
  
  def initialize instance
    @script = []
    @scripts = {}
    case true
      when instance.instance_of?(Module)
        build_from_module instance
      when instance.instance_of?(Class)
        build_from_class instance
      when instance.is_a?(String)
        build_from_source instance
      else
        raise "Unknown instance type #{instance} #{instance.class}"
    end
  end

  def format script
    res = []
     script.flatten.each do |s|
       next if s.empty?
       s.split("\n").flatten.each { |str| str.strip!; str.chomp!; res << str }
#       res << s.strip.chomp
     end
     indent res
  end

  def to_sqf
    format(@script).join("\n")
  end

  private
  def build_from_module instance
#    @build = BuildModule.
  end
  def build_from_source instance
    source_file = "#{Dir.pwd}/#{instance}" if instance !~ /^\//
    source = File.read(source_file)
    sexp = RubyParser.new.parse(source)
    p = Rarma::SQF::Compiler::Processor.new
    p.process sexp
    @script << p.script
  end
  def build_from_class instance
    require 'sqf/rarma/object'
#    raise "#{instance} must be an instance of Rarma::Object" unless instance < Rarma::Object
    Rarma.logger.debug "Building script from class #{instance}"
    
    classname = instance.options[:classname] ? instance.options[:classname].to_s : instance.to_s.gsub("::", "_") 
#    classname = instance.to_s 
    # class header
    if instance.superclass.instance_of? Rarma::Object or instance.superclass == Rarma::Object
      @script << 'CLASS_EXTEND("%s", "%s"):' % [classname, instance.superclass.to_s.gsub("::", "_")]
    elsif instance == Rarma::Object
      @script << 'CLASS("%s"):' % classname
    else
      @script << 'UNKNOWN STATE'
    end

    # class variables
    klass = instance.new
    klass.instance_variables.each do |var|
      val = klass.instance_variable_get(var)
      val = '"%s"' % val if val.is_a? String
      @script << '    PRIVATE VARIABLE("%s", %s);' % [var, val]
    end

    # public methods
    (klass.methods - instance.superclass.new.methods + instance.native_methods).uniq.each do |m|
      params = klass.method(m).parameters
      argtype = nil
      if params.count > 1
        argtype = "array"
      elsif params.count == 1
        argtype = "object"
      end

      source = klass.method(m).source

      if instance.native_methods.include? m
        src_header = source.split("\n")[0]
        sexp = RubyParser.new.parse("#{src_header}; end")
        Rarma.logger.debug "sexp #{sexp}"

        p = Rarma::SQF::Compiler::Processor.new
        p.current_class = classname
        p.process sexp
        require 'pp'
        pp p.script
        @script << p.script[0..-2]

        Rarma.logger.debug "processing native method #{m}"
        args = []
        params.count { |k,v| args << nil }
        body = klass.send(m, *args)
        @script << body
      @script << '}'
      else 
        Rarma.logger.debug "processing method #{m}"

        sexp = RubyParser.new.parse(source)
        Rarma.logger.debug "sexp #{sexp}"

        require 'pp'
        pp sexp

        p = Rarma::SQF::Compiler::Processor.new
        p.current_class = classname
        p.process(sexp)

        @script << p.script
      end
    end
    @script << 'ENDCLASS'
  end

  def build!

  end

  def indent script
    spaces = 4
    indent = 0
    res = []
    script.each do |n|
      n.chomp!
      n.strip!
      next if n.empty?
      if n=~/^CLASS.*;$/
        n.gsub!(/;/, '')
      end
      if n=~/^}/ or n =~ /^ENDCLASS/
        indent -= spaces
      end
      indent = 0 if indent < 0
      line = "#{" " * indent}#{n}"
      line += ";" unless line.match(/(\;$|\{$|\:$|^CLASS)/)
      res << line
      if n=~ /{$/ or n=~/^CLASS.*$/
        indent += spaces
      end
    end
    res
  end
end
