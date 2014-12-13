# represents a (human) player unit
class Rarmalib::SQF::Player < Rarmalib::SQF::Unit
  attr_accessor :selected_units, :score
  attr_reader :this

  # create player object with given netid or
  # if no id is given create the object as
  # local player
  #
  # ==== Arguments
  #
  # * +_netid+ - net id of the player
  #
  # ==== Example
  #   # create player from netid
  #   _player = Player.new(123)
  #
  #   # create local player, the same as the player keyword in SQF
  #   _player = Player.new
  #
  def initialize _netid=-1
    if _netid != -1
      @this = SQF.objectFromNetId _netid
    else
      @this = SQF.player
    end
    updateUnit
  end

  # returns the selected units in the group of the player
  def selected_units
    SQF.groupSelectedUnits @this
  end

  def classname
    SQF.typeOf @this
  end

  # adds a score, shown on the score board in MP, to player
  # negative values substract from the score
  # ==== Arguments
  # * +_score+ - integer value, score to add
  def addScore _score=0
    SQF.addScore @this, _score
  end

  # return all playable units
  __native
  def self.playable
    <<-SQF
    ["new", playableUnits] call Rarma_Array
    SQF
  end

  # return all players
  # see http://dev.withsix.com/docs/cba/files/common/fnc_players-sqf.html
  __native
  def self.players
    <<-SQF
    ["new", (call CBA_fnc_players)] call Rarma_Array
    SQF
  end
end
