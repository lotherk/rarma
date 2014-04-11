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
end
require "rarma/sqf/compiler/script/class"
require "rarma/sqf/compiler/script/module"
