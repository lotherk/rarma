require 'rarma/compiler/parser'
module Rarma::Compiler
  def self.compile src, opts={}
    # parse code
    script = Parser.parse src
  end
end
