module Rarma::SQF::Compiler::Processor::Call
  def process_call exp
    Rarma.logger.debug("#{self} Processing call with #{exp}")
    left = exp.shift
    func = exp.shift
    func ||= exp.shift
    a = self.class.new
    Rarma.logger.debug "#{left} is a #{left.class}"
    if left.is_a? Sexp
      a.process left
      Rarma.logger.debug "#{left} got: #{a.script.flatten.join(".")}"
    else
    end
    Rarma.logger.debug("#{self}   got #{a.script}")
    left = a.script.flatten.join("")
#    @script << a.script
    Rarma.logger.debug "left: #{left} (#{left.class}), func: #{func} (#{func.class})"
    operands = ["+", "-", "-=", "+=", "!=", "==", "*", "*=", "/", "/=", "%", "<=", ">=", "<", ">"]
    if func.to_s == "[]"
      # hash access, retval should be hash name.
      key = exp.shift
      a = self.class.new
      a.process key
      key = a.script.join("").chomp
      @script << '(["get", %s] call %s)' % [key, left]
      Rarma.logger.debug "Hash access for #{left}, key #{key}"
    elsif operands.include?(func.to_s)
      a = self.class.new
      a.process exp.shift
      @script << '(%s %s %s)' % [left, func, a.script.join("")]
      Rarma.logger.debug "Comparison #{left} #{func} #{a.script.join("")}"
#    elsif func.to_s == '%'
    elsif func.to_s == 'raise'
      msg = nil
      excp = nil
      if exp.count == 1
        msg = exp.shift
        excp = "RuntimeError"
        a = self.class.new
        a.process msg
        msg = a.script.join("")
      elsif exp.count == 2
        excp = exp.shift
        msg = exp.shift
        a = self.class.new
        a.process msg
        msg = a.script.join("")
        a = self.class.new
        a.process excp
        excp = a.script.join("")
      else
        raise "can't handle raise, to many exps: #{exp.to_s}"
      end
      @script << 'if(true) exitWith { throw ["%s",%s] }' % [excp, msg]
    elsif func.to_s =~ /^attr_/ 
      a = self.class.new
      while exp.count > 0
        a.process exp.shift
      end
      a.script.each do |reader|
        var = {}
        var[:name] = reader
        var[:type] = reader =~/s$/ ? :multi : :single
        case func
          when :attr_reader
            var[:access] = :reader
          when :attr_writer
            var[:access] = :writer
          when :attr_accessor
            var[:access] = :accessor
        end
        @current_class.vars << var
      end
    elsif func.to_s == 'nil?'
      @script << '(isNil "%s")' % left
    elsif func.to_s =~ /^__/
      # rarma preprocessor command
      ppcmd = "process_preprocessor_#{func.to_s.gsub(/^__/, '')}".to_sym
      raise "Unknown preprocessor command #{ppcmd}" unless respond_to?(ppcmd)
      send(ppcmd, exp)
    elsif Rarma::SQF::Commands.instance_methods.include?func and left.strip.empty?
      a = self.class.new
      while exp.count > 0
        a.process exp.shift
      end
      if a.script.count == 2
        @script << '(%s %s %s)' % [a.script.shift, func, a.script.join(", ").strip.chomp]
      elsif a.script.count > 2
        @script << '(%s %s [%s])' % [a.script.shift, func, a.script.join(", ").strip.chomp]
      else
        @script << '(%s %s)' % [func, a.script.join(", ").strip.chomp]
      end
      #raise "HAHA #{func}, #{left}"
    else
#      @script << "#{func} moep"
      a = self.class.new
      while exp.count > 0
        cur = exp.shift
        if cur.is_a? Sexp
          Rarma.logger.debug("#{self} Processing nested Sexp: #{cur}")
          a.process cur
        else
          Rarma.logger.debug "cur is a #{cur.class} => #{cur}"
        end
      end
      # a.script should be arguments for func
      left.strip!
      unless left.empty?
        argline = ""
        if a.script.count > 1
          argline = ", [" + a.script.join(",") + "]"
        elsif a.script.count == 1
          argline = ", #{a.script.join("").chomp.strip}"
        else
          argline = ""
        end
        @script << '(["%s"%s] call %s)' % [func, argline, left]
        #@script << a.script
      else
        if a.script.count > 0
          @script << "([%s] call %s)" % [a.script.join(", "), func]
        else
          $VARIABLES ||= []
          if $VARIABLES.include? func
            @script << "%s" % func
          else
            @script << "(call %s)" % func
          end
        end
      end
      #@script << "\n" if @root
      Rarma.logger.debug("#{self} End of call")
    end
    s()
  end
end
