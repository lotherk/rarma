require 'ruby_parser'

require 'rarma/compiler/processor'
module Rarma::Compiler
  def self.compile src, opts={}
    # parse code
    processor = Processor.new
    processor.process RubyParser.new.parse src
  end
end
