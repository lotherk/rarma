# Represents a unit in the game world
class Rarma::Unit < Rarma::SQFObject
  attr_accessor :group, :score, :rating, :rank, :weapons, :magazines,
    :skill, :subskills, :unitpos, :uniform, :vest, :headgear, :items,
    :waypoints, :formation_pos, :linked_items, :primary_weapon, :secondary_weapon,
    :handgun, :primary_weapon_items, :secondary_weapon_items, :handgun_items
  attr_reader :this

  def initialize
    @score = 0
    @weapons = []
    @magazines = []
    @items = []
    @waypoints = []
    @subskills = []
    @linked_items = []
    @primary_weapon_items = []
    @secondary_weapon_items = []
    @handgun_items = []
  end

  # actually create unit
  # ==== Arguments
  # * +_marker+ - array of markers. The engine will choose one randomly and
  #   spawn the unit at the marker position
  # * +_special+ - string, defining a special spawn mode. Might be "NONE", "FORM",
  #   "CAN_COLLIDE" or "FLY"
  def create _marker=[], _special="FORM"
    raise "No side set" unless @side
    @group ||= Rarma::Group.new(@side)
    @this = SQF.createUnit @group, @classname, @posATL, _marker.to_a, 0, _special
  end

  # adds a score, shown on the score board in MP, to the unit
  # negative values substract from the score
  # ==== Arguments
  # * +_score+ - integer value, score to add
  def addScore _score
    @score = _score
    SQF.addScore @this, _score
  end

  def addRating _rating
    @rating = _rating
    SQF.addRating @this, _rating
  end

  # sets a rank for the unit
  # ==== Arguments
  # * +_rank+ - the rank to set the unit to
  def setRank _rank
    @rank = _rank
    SQF.setRank @this, _rank
  end

  # adds a weapon to the unit
  # ==== Arguments
  # * +_wep+ - the classname of the weapon to add
  def addWeapon _wep
    SQF.addWeapon @this, _wep
    @weapons = SQF.weapons @this
  end

  # adds a magazine to the unit
  # ==== Arguments
  # * +_mag+ - the classname of the magazine to add
  def addMagazine _mag
    SQF.addMagazine @this, _mag
    @magazines = SQF.magazines @this
  end

  def addMagazines _mag, _count
    SQF.addMagazine @this, _mag, _count
    @magazines = SQF.magazines @this
  end

  # sets the skill of the unit. This method allows either
  # one or two arguments.
  # ==== Arguments
  # using one argument you'll need to supply one integer value
  #
  # * +_value+ - integer value between 0 and 1
  #
  # using two arguments you'll need to supply the subskill
  # as string and a integer value to assign to it.
  #
  # * +_subskill+ - subskill string
  # * +_value+ - integer value for the subskill between 0 and 1
  #--
  # spooky shit; ruby, Y U NO allow easy overloading?!
  # it's less code, though..
  #++
  def setSkill *_args
    if _args.count == 2
      SQF.setSkill @this, _args[0], _args[1]
      @skill = SQF.skill @this
      @subskills[_args[0]] = _args[1]
    elsif _args.count == 1
      SQF.setSkill @this, _args[0]
      @skill = SQF.skill @this
    else
      raise "setSkill: only 1 or 2 arguments allowed"
    end
  end

  # adds a weapon item to the primary weapon
  # ==== Arguments
  # * +_item+ - classname of the item to add to the primary weapon
  def addPrimaryWeaponItem _item
    SQF.addPrimaryWeaponItem @this, _item
    @primary_weapon_items = SQF.primaryWeaponItems @this
  end

  # adds a weapon item to the secondary weapon
  # ==== Arguments
  # * +_item+ - classname of the item to add to the secondary weapon
  def addSecondaryWeaponItem _item
    SQF.addSecondaryWeaponItem @this, _item
    @secondary_weapon_items = SQF.secondaryWeaponItems @this
  end

  # adds a weapon item to the handgun
  # ==== Arguments
  # * +_item+ - classname of the item to add to the handgun
  def addHandgunItem _item
    SQF.addHandgunItem @this, _item
    @handgun_items = SQF.handgunItems @this
  end

end
