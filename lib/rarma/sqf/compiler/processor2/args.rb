module Rarma::SQF::Compiler::Processor::Args
  def process_args exp
    args = []
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        a = self.class.new
        a.process cur
        args << a.script
      else
        args << cur
      end
    end
    vals = []
    vargs = []
    args.each_with_index do |arg, i|
      vname = nil
      default = nil
      if arg.is_a? Array
        x = arg.shift.to_s.split("=")
        vname = x[0].strip
        default = x[1].strip
      else
        vname = arg.to_s
        default = "nil"
      end
      vargs << '%s' % vname if vname =~ /^_/
      if args.count > 1
        vals << '%s = RPARAMS(%i, %s)' % [vname, i, default]
      elsif args.count == 1
        vals << '%s = RPARAM(%s)' % [vname, default]
      end
    end 
    if vargs.count > 0
      @script << 'private ["%s"]' % vargs.join('", "')
    end
    @script << vals
    exp
  end
end
