module Rarma::SQF::Compiler::Processor::Preprocessor
  def process_preprocessor_native exp
    $natives ||= []
    $natives << exp.shift[1] rescue $native_next=true
  end

  def process_preprocessor_alias exp
    $aliases = []
    while exp.count > 0
      $aliases << exp.shift[1]
    end
    exp
  end

  def process_preprocessor_only_on exp
    #raise "__only_on works only on modules." unless @current_class.is_a?(Rarma::SQF::Compiler::Script::Module)

    on = exp.shift[1]
    opt = exp.shift
    raise "__only_on: opts must be hash" unless opt.shift == :hash
    opts = {}
    while opt.count > 0
      key = opt.shift[1]
      val = opt.shift
      if val.count > 1
        val = val[1]
      else
        val = val[0]
      end
      opts[key] = val
    end

    raise "__only_on: unknown target: #{on}" unless [:client,:server,:dedicated,:headless].include?on
    case on
      when :server
        #@current_class.header << 'if(!isServer) exitWith {}'
        @script << 'if(!isServer) exitWith {}'
      when :dedicated
        #@current_class.header << 'if(!isDedicated) exitWith {}'
        @script << 'if(!isDedicated) exitWith {}'
      when :client
        #@current_class.header << 'if(!hasInterface || {isServer} || {isDedicated}) exitWith {}'
        @script << 'if(!hasInterface || {isServer} || {isDedicated}) exitWith {}'
      when :headless
        #@current_class.header << 'if(hasInterface || {isServer} || {isDedicated}) exitWith {}'
        @script << 'if(hasInterface || {isServer} || {isDedicated}) exitWith {}'
    end
  end
end
