# represents a (human) player unit
class Rarma::Player < Rarma::Unit
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
  #   player = Player.new(123)
  #
  #   # create local player, the same as the player keyword in SQF
  #   player = Player.new
  #
  def initialize _netid=-1
    if _netid != -1
      @this = SQF.objectFromNetId _netid
    else
      @this = SQF.player
    end

    @score = SQF.score @this
  end

  # returns the selected units in the group of the player
  def selected_units
    @selected_units = SQF.groupSelectedUnits @this
  end

  def classname
    @classname ||= SQF.typeOf @this
    @classname
  end

  # adds a score, shown on the score board in MP, to player
  # negative values substract from the score
  # ==== Arguments
  # * +_score+ - integer value, score to add
  def addScore _score
    @score = _score
    SQF.addScore @this, _score
  end

end
