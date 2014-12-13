module Rarma::SQF::Compiler::Processor::Array
  def process_array exp
    Rarma.logger.debug "#{self} Processing array #{exp}"
    a = self.class.new
    while exp.count > 0
      a.process exp.shift
    end
    @script << "[\"new\", [#{a.script.join(", ")}]] call Rarmalib_Util_Array"
    #@script << "[#{a.script.join(", ")}]"
    Rarma.logger.debug "#{self} End of array"
    exp
  end
end
