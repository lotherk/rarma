module Rarma::SQF::Compiler::Processor::Resbody
  def process_resbody exp
    type = exp.shift
    type = type.count > 1 ? type[1][1] : nil
  
    if type
      @script << '{ "%s" }: {' % type
    else
      @script << 'default {'
    end

    a = self.class.new
    while exp.count > 0
      a.process exp.shift
    end
    body = a.script
    @script << body.flatten
    @script << '}'
    exp
  end
end
