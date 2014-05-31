module Rarma::Framework::Mission::Playable
  class Rarma::Framework::Mission::Playable::Player
    attr_accessor :side, :classname, :group, :pos
    def initialize opts={}
      @side = opts[:side] || CIVILIAN
      @classname = opts[:classname] || "C_Man_1"
      @group = opts[:group]
      @pos = opts[:pos] || [0, 0, 0];
    end
    def create
      @group ||= "(createGroup (createCenter #{@side}))"
      sqf = <<-EOS
      if (true) then {
        _group = #{@group};
        _p = _group createUnit ["#{@classname}", #{@pos}, [], 0, "CAN_COLLIDE"];
        if(count _group.units == 0) then { _group selectLeader _p };
        setPlayable _p;
      };
      EOS
      puts sqf
    end
  end
  def playable opts={}, &block
    Rarma.logger.debug "Creating new playable unit"
    player = Rarma::Framework::Mission::Playable::Player.new(opts)
    block.call(player)
    player.create
  end
end
