require 'method_source'
require 'rarma'
require 'rarma/sqf'
module Rarma::SQF::Compiler
  require 'rarma/sqf/compiler/processor'
  require 'rarma/sqf/compiler/scriptbuilder'

  def self.compile input

    Rarma.logger.debug { "Compiling #{input}" }
    ScriptBuilder.new(input)
  end
end
