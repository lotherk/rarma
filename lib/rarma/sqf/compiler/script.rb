require "erb"
class Rarma::SQF::Compiler::Script
  attr_reader :functions, :modules, :classes, :code, :requires, :script

  def initialize
    reset
  end
  def reset
    @functions = []
    @modules = []
    @classes = []
    @code = []
    @requires = []
  end

  def self.get_instance
    @instance ||= self.new
  end

  def to_sqf
    Rarma.logger.debug "Generating SQF...."
    erb = ERB.new(load_template("script"), nil, "-").result(binding)
  end

  def load_template name
    file = Rarma.gem_root + "/templates/#{name}.erb"
    template = File.read(file)
    template
  end
  def self.indent script
    spaces = 4
    indent = 0
    flat = []
    res = []
    script.flatten.each do |f|
      flat << f.split("\n") if f.is_a?String
      flat << f.flatten if f.is_a?Array
    end
    flat.flatten.each do |n|
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
      line += ";" unless line.match(/(\;$|\{$|\:$|^CLASS|^\s*\/|^\s*\*)/)
      res << line
      if n.strip =~ /{$/ or n.strip =~ /^CLASS.*$/
        indent += spaces
      end
    end
    res
  end
end
require "rarma/sqf/compiler/script/class"
require "rarma/sqf/compiler/script/module"
