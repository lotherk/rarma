module Rarma::Compiler
  class Namespace < Hash
  end
  module Assembly
    @processors = []
    @map = []
    def self.load_file file
      return if @map.include? file
      @map << file
      Rarma.logger.debug "Assembling #{file}"
      processor = Scope.namespace.processor.new_processor
      processor.scope = Scope.namespace.processor.new_scope
      @processors << processor
      processor.file = file
      processor.process_file file
    end
    def self.namespace
      unless @namespace
         @namespace = Namespace.new
        [:super, :method, :module, :class, :script].each { |e| @namespace[e] = [] }
      end
      @namespace
    end
    def self.build
      # compile bodies
      namespace.each do |k, v|
        v.each { |o| o.compile_body }
      end
    end

    def self.debug_dump
      namespace.each do |type, val|
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
