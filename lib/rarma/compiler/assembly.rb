module Rarma::Compiler
  class Namespace < Hash
  end
  module Assembly
    @processors = []
    def self.load_file file
      Rarma.logger.debug "Assembling #{file}"
      processor = Processor.new
      @processors << processor
      processor.file = file
      processor.process RubyParser.new.parse File.read(file)
    end
    def self.namespace
      unless @namespace
         @namespace = Namespace.new
        [:method, :module, :class, :script].each { |e| @namespace[e] = [] }
      end
      @namespace
    end
    def self.build
      puts @namespace.keys
    end

    def self.debug_dump
      @namespace.each do |type, val|
        puts type
        val.each do |v|
          v.debug_dump
        end
      end
      @processors.each do |p|
        p.debug_dump
      end
    end
  end
end
