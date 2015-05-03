module Rarma::Compiler
  class Namespace < Hash
  end
  module Assembly
    @namespace = Namespace.new
    [:module, :class, :script].each { |e| @namespace[e] = [] }

    def self.load_file file
      Rarma.logger.debug "Loading #{file}"
      processor = Processor.new
      processor.file = file
      processor.process RubyParser.new.parse File.read(file)
    end
    def self.namespace
      @namespace
    end
    def self.build
      puts @namespace.keys
    end
  end
end
