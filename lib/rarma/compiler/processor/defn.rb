module Rarma::Compiler::Processor::Defn
  # process method definition
  def process_defn exp
    Rarma.logger.debug "defn: #{exp.to_s}"
    method = Rarma::Compiler::Method.new
    method.name = exp.shift

    # process params
    params = exp.shift
    process_params = self.class.new
    process_params.scope = method
    process_params.process params
    puts method.inspect
  end
end
