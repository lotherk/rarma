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

  def setScore _score
    @score = _score
    setScore @this, _score
  end

  def setRating _rating
    @rating = _rating
    setRating @this, _rating
  end

  def setRank _rank
    @rank = _rank
    setRank @this, _rank
  end

  # dunno if this works
  def addWeapon _wep
    addWeapon @this, _wep
    @weapons = weapons @this
  end

  # same here
  def addMagazine _mag
    addMagazine @this, _mag
    @magazines = magazines @this
  end

  # same here
  def addMagazines _mag, _count
    addMagazine @this, _mag, _count
    @magazines = magazines @this
  end

  def add_primary_weapon_item _item
    @primary_weapon_items << _item
    addPrimaryWeaponItem @this, _item
  end

  def add_secondary_weapon_item _item
    @secondary_weapon_items << _item
    addSecondaryWeaponItem @this, _item
  end

  def add_handgun_item _item
    @handgun_items << _item
    addHandgunItem @this, _item
  end

end
