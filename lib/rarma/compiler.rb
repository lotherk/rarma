require 'ruby_parser'
require 'securerandom'
require 'rarma/compiler/processor'
require 'rarma/util/tidy'
module Rarma::Compiler
  def self.compile src, opts={}
    # parse code
    processor = Processor.new
    processor.process RubyParser.new.parse src
    puts Rarma::Util::Tidy.tidy processor.result.flatten
  end
end
require 'rarma/compiler/scope.rb'
