class Rarma::Unit < Rarma::SQFObject
  attr_accessor :group, :score, :rating, :rank, :weapons, :magazines, 
    :skill, :subskills, :unitpos, :uniform, :vest, :headgear, :items, 
    :waypoints, :formation_pos, :linked_items, :primary_weapon, :secondary_weapon,
    :handgun, :primary_weapon_items, :secondary_weapon_items, :handgun_items

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
  def create _marker=[], _special="FORM"
    raise "No side set" unless @side
    @group ||= Group.new(@side)
    @this = SQF.createUnit @group, @classname, @posATL, _marker.to_a, 0, _special
  end

  def setScore _score
    @score = _score
    SQF.setScore @this, _score
  end

  def setRating _rating
    @rating = _rating
    SQF.setRating @this, _rating
  end

  def setRank _rank
    @rank = _rank
    SQF.setRank @this, _rank
  end

  # dunno if this works
  def addWeapon _wep
    SQF.addWeapon @this, _wep
    @weapons = SQF.weapons @this
  end

  def addMagazine _mag
    SQF.addMagazine @this, _mag
    @magazines = SQF.magazines @this
  end

  def addMagazines _mag, _count
    SQF.addMagazine @this, _mag, _count
    @magazines = SQF.magazines @this
  end

  # spooky shit; ruby, Y U NO allow easy overloading?!
  # it's less code, though..
  def setSkill *args
    if args.count == 2
      SQF.setSkill @this, args[0], args[1]
      @skill = SQF.skill @this
      @subskills[args[0].to_sym] = args[1]
    elsif args.count == 1
      SQF.setSkill @this, _args[0]
      @skill = SQF.skill @this
    else
      raise "setSkill: only 1 or 2 arguments allowed"
    end
  end

  def addPrimaryWeaponItem _item
    SQF.addPrimaryWeaponItem @this, _item
    @primary_weapon_items = SQF.primaryWeaponItems @this
  end

  def addSecondaryWeaponItem _item
    SQF.addSecondaryWeaponItem @this, _item
    @secondary_weapon_items = SQF.secondaryWeaponItems @this
  end

  def addHandgunItem _item
    SQF.addHandgunItem @this, _item
    @handgun_items = SQF.handgunItems @this
  end

end
