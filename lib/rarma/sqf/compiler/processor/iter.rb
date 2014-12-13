module Rarma::SQF::Compiler::Processor::Iter
  def process_iter exp
    Rarma.logger.debug("#{self} Processing iteration #{exp}")
    scope = self.class.new
    iter_var = exp.shift
    iter_args = exp.shift
    while exp.count > 0
      scope.process exp.shift
    end

    block = []
    block << "{\n"
    iter_args.shift
    argline = []
    if iter_args.count > 1
      iter_args.each_with_index do |ar, i|
        argline << "#{ar} = DEFAULT_PARAM(#{i}, nil)\n"
      end
    elsif iter_args.count == 1
      argline << "#{iter_args.shift} = DEFAULT_PARAM(0, nil)\n"
    end
    block << argline
    block << scope.script
    Rarma.logger.debug "Proccesing iter_Var #{iter_var}"
    a = self.class.new
    a.process iter_var
    Rarma.logger.debug "Processed: #{a.script}"
#    iter_func =
    Rarma.logger.debug "Having iter_var #{iter_var} and iter_args #{iter_args}"

#    raise "foo"
    block << "\n}"
    line = a.script.join("")
    line = line.sub("]", ", [#{block.join("\n")}]]")
    require 'pp'
#    @script << "[#{block.join("\n")}] call #{a.script.join("")}"
    @script << line
#    exit if a.script.join("") =~/Thread/

    Rarma.logger.debug("#{self} End of iteration")
    exp
  end
end
