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
