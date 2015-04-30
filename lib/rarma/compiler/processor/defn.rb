module Rarma::Compiler::Processor::Defn
  # process method definition
  def process_defn exp
    Rarma.logger.debug "defn: #{exp.to_s}"
    method = Rarma::Compiler::Method.new
    method.name = exp.shift
    method.params = exp.shift
    puts method.inspect
  end
end
