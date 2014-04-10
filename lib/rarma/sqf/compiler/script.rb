require "erb"
class Rarma::SQF::Compiler::Script
  attr_reader :functions, :modules, :classes, :code, :requires

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
    erb = ERB.new(File.read(Rarma.gem_root + "/templates/script.erb"))
    erb.result(binding)
  end
end
require "rarma/sqf/compiler/script/class"
require "rarma/sqf/compiler/script/module"
