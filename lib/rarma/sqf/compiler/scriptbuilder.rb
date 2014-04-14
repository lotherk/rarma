require 'ruby_parser'
require 'rarma/sqf'
require 'rarma/sqf/compiler/script'
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
    Rarma::SQF::Compiler::Script.indent(@script).join("\n") + "\n"
  end

  private
  def build_from_module instance
#    @build = BuildModule.
  end
  def build_from_source instance
    require 'pp'
    source_file = "#{Dir.pwd}/#{instance}" if instance !~ /^\//
    source = File.read(source_file)
    sexp = RubyParser.new.parse(source)
#    pp sexp
    p = Rarma::SQF::Compiler::Processor.new
    p.process sexp
    Rarma::SQF::Compiler::Script.get_instance.code << Rarma::SQF::Compiler::Script.indent(p.script).join("\n")
    @script << Rarma::SQF::Compiler::Script.get_instance.to_sqf
    Rarma::SQF::Compiler::Script.get_instance.reset
  end
  def build_from_class instance
    raise "do not use build_from_class!"
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
