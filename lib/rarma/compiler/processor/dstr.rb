module Rarma::Compiler::Processor::Dstr
  def process_dstr exp
    Rarma.logger.debug exp.to_s
    results = []
    while exp.count > 0
      e = exp.shift
      if e.is_a?Sexp
        if [:str, :lit].include? e[0]
          results << { :str => e[1] }
        else
          processor = new_processor
          processor.process e
          results << { :sexp => processor.result.shift }
        end
      else
        results << { :str  => e }
      end
    end

    # build format line
    line = []
    args = []
    counter = 0
    results.each do |r|
      if r[:str]
        line << r[:str]
      else
        line << "%#{counter+=1}"
        args << r[:sexp]
      end
    end

    @result << '(format["%s", %s])' % [line.join(''), args.join(', ')]
    exp
  end
end
