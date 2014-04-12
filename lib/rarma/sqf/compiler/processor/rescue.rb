require 'securerandom'

module Rarma::SQF::Compiler::Processor::Rescue
  def process_rescue exp
    block = exp.shift
    a = self.class.new
    a.process block
    block = a.script
    rescues = []
    statements = []
    while exp.count > 0
      resc = exp.shift
      type = resc[0]
      a = self.class.new
      a.process resc
      if type == :resbody
        rescues << a.script
      else
        statements << a.script
      end
    end
    tryid = "_try_#{SecureRandom.hex}"
    @script << '%s = false' % tryid
    @script << 'try {'
    @script << block
    @script << '%s = true' % tryid
    @script << '} catch {'
    @script << 'private ["_type", "_message"]'
    @script << '_type = _exception select 0; _message = _exception select 1;'
    @script << 'switch(_type) do {'
    rescues.each do |r|
      @script << r
    end
    @script << '}'
    @script << '}'
    @script << 'if(%s) then {' % tryid
    @script << statements.flatten
    @script << '}'
    @script << '%s = nil' % tryid
    exp
  end
end
