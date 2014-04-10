require "rarma/sqf/compiler/script/class"
require "rarma/sqf/compiler/script/method"
require "rarma/sqf/compiler/script/var"
require "rarma/sqf/compiler/script/module"

class Rarma::SQF::Compiler::Script
  attr_reader :functions, :modules, :classes, :code, :requires

  def initialize
    @functions = []
    @modules = []
    @classes = []
    @code = []
    @requires = []
  end

  def self.instance
    @instance ||= self.new
  end
end
