module Rarma::SQF::Compiler::Processor::Args
  def process_args exp
    Rarma.logger.debug "#{self} Processing args #{exp}"
    args = []
    while exp.count > 0
      cur = exp.shift
      if cur.is_a? Sexp
        Rarma.logger.debug "#{self} Args Sexp: #{cur}"
        a = self.class.new
        a.process cur
        args << a.script
      else
        Rarma.logger.debug "#{self} Args No Sexp: #{cur}"
        args << cur
      end
#      args << a.script
    end
    Rarma.logger.debug("#{self} Got args: #{args}")
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
      vals << '%s = DEFAULT_PARAM(%i, %s)' % [vname, i, default]
      Rarma.logger.debug("#{self} arg#{i}: #{arg}")
    end
    if vargs.count > 0
      @script << 'private ["%s"]' % vargs.join('", "')
    end
    @script << vals
    exp
  end
end
