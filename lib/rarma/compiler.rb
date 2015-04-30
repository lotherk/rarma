require 'ruby_parser'

require 'rarma/compiler/processor'
module Rarma::Compiler
  def self.compile src, opts={}
    # parse code
    processor = Processor.new
    processor.process RubyParser.new.parse src
  end
end

Dir[File.join(Rarma.root, 'lib', 'rarma', 'compiler', '*.rb')].each do |req|
  require req
end
