module Rarma::SQF::Compiler::Processor::Args
  def process_args exp
    @meth[:args] ||= []
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
    args.each_with_index do |arg, i|
      vname = nil
      default = "nil"
      if arg.is_a? Array
        x = arg.shift.to_s.split("=")
        vname = x[0].strip
        default = x[1].strip
      else
        vname = arg.to_s
        default = "nil"
      end
      type = :private if vname =~ /^_/
      type ||= :public
      if vname=~/^\*/
        vname.gsub!(/\*/, '')
        default = '(["new", _this] call Rarma_Array)'
      end
      @meth[:args] << [vname, default, type]
    end 
    exp
  end
end
