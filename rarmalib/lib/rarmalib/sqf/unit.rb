# Represents a unit in the game world
class Rarmalib::SQF::Unit < Rarmalib::SQF::Object
  attr_accessor :group, :rating, :rank, :weapons, :magazines,
    :skill, :subskills, :unitpos, :uniform, :vest, :headgear, :items,
    :formation_pos, :assigned_items, :primary_weapon, :secondary_weapon,
    :handgun, :primary_weapon_items, :secondary_weapon_items, :handgun_items,
    :name, :ammo
  attr_reader :this

  def initialize _classname, _side
    @classname = _classname
    @side = _side
    @skill = 0.5
   # @score = 0
   # @weapons = []
   # @magazines = []
   # @items = []
   # @waypoints = []
   # @subskills = []
   # @linked_items = []
   # @primary_weapon_items = []
   # @secondary_weapon_items = []
   # @handgun_items = []
  end

  # actually create unit
  # ==== Arguments
  # * +_marker+ - array of markers. The engine will choose one randomly and
  #   spawn the unit at the marker position
  # * +_special+ - string, defining a special spawn mode. Might be "NONE", "FORM",
  #   "CAN_COLLIDE" or "FLY"
  def create _marker=[], _special="FORM"
    #raise "No side set" unless @side
    @group ||= Rarmalib::SQF::Group.new(@side)
    _grp = @group.this
    _mrka = _marker.to_a
    @this = SQF.createUnit _grp, @classname, @posASL, _mrka, 0, _special
    update_unit
  end

  #--
  # See sqfobject.rb updateObject for details
  # about this fucked up function name
  #++
  def update_unit
    # dirty hack, see issue #6
    _checkthis = @this
    unless _checkthis.nil?
       update_object
       @skill = SQF.skill @this
       @weapons = SQF.weapons @this
       @magazines = SQF.magazines @this
       @items = SQF.items @this
       @assigned_items = SQF.assignedItems @this
       @rating = SQF.rating @this
       @rank = SQF.rank @this
       @unitpos = SQF.unitPos @this
       @uniform = SQF.uniform @this
       @vest = SQF.vest @this
       @headgear = SQF.headgear @this
       @formation_pos = SQF.formationPosition @this
       @primary_weapon = SQF.primaryWeapon @this
       @secondary_weapon = SQF.secondaryWeapon @this
       @handgun = SQF.handgunWeapon @this
       @primary_weapon_items = SQF.primaryWeaponItems @this
       @secondary_weapon_items = SQF.secondaryWeaponItems @this
       @handgun_items = SQF.handgunItems @this
       @ammo = SQF.ammo @this, @primary_weapon
    end
  end

  def add_rating _rating
    @rating = _rating
    SQF.addRating @this, _rating
  end

  # sets a rank for the unit
  # ==== Arguments
  # * +_rank+ - the rank to set the unit to
  __alias :setRank
  def rank= _rank
    @rank = _rank
    SQF.setRank @this, _rank
  end

  # adds a weapon to the unit
  # ==== Arguments
  # * +_wep+ - the classname of the weapon to add
  __alias :addWeapon
  def add_weapon _wep
    SQF.addWeapon @this, _wep
    @weapons = SQF.weapons @this
  end

  # adds a magazine to the unit
  # ==== Arguments
  # * +_mag+ - the classname of the magazine to add
  __alias :addMagazine
  def add_magazine _mag
    SQF.addMagazine @this, _mag
    @magazines = SQF.magazines @this
  end

  __alias :addMagazines
  def add_magazines _mag, _count
    SQF.addMagazine @this, _mag, _count
    @magazines = SQF.magazines @this
  end

  def magazines
    @magazines = SQF.magazines @this
    @magazines
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
  __alias :setSkill
  def skill= *_args
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
  __alias :addPrimaryWeaponItem
  def add_primary_weapon_item _item
    SQF.addPrimaryWeaponItem @this, _item
    @primary_weapon_items = SQF.primaryWeaponItems @this
  end

  # adds a weapon item to the secondary weapon
  # ==== Arguments
  # * +_item+ - classname of the item to add to the secondary weapon
  __alias :addSecondaryWeaponItem
  def add_secondary_weapon_item _item
    SQF.addSecondaryWeaponItem @this, _item
    @secondary_weapon_items = SQF.secondaryWeaponItems @this
  end

  # adds a weapon item to the handgun
  # ==== Arguments
  # * +_item+ - classname of the item to add to the handgun
  __alias :addHandgunItem
  def add_handgun_item _item
    SQF.addHandgunItem @this, _item
    @handgun_items = SQF.handgunItems @this
  end

  # sets the roundcount of the currently loaded
  # magazine of the suplied weapon
  # ==== Arguments
  # * +_wep+ - the weapon of which the currently loaded magazine
  #   should be changed
  # * +_count+ - the new roundcount of the magazine
  __alias :setAmmo
  def ammo= _wep, _count
    SQF.setAmmo @this, _wep, _count
  end

  __alias :name=, :setIdentity
  def identity= _name
    @name = _name
    SQF.setIdentity @this, _name
  end

  __alias :assignItem
  def assign_item _item
    SQF.assignItem @this, _item
  end

  __alias :unassignItem
  def unassign_item _item
    SQF.unassignItem @this, _item
  end

  __alias :linkItem
  def link_item _item
    SQF.linkItem @this, _item
  end

  __alias :unlinkItem
  def unlink_item _item
    SQF.unlinkItem @this, _item
  end

  __alias :commandFire
  def command_fire _target
    SQF.commandFire @this, _target
  end

  __alias :doFire
  def do_fire _target
    SQF.doFire @this, _target
  end

  def fire _wep
    SQF.fire @this, _wep
  end

  __alias :forceWeaponFire
  def force_weapon_fire _wep
    SQF.forceWeaponFire @this, _wep
  end

  __alias :selectWeapon
  def select_weapon _wep
    SQF.selectWeapon @this, _wep
  end

  __alias :combatMode
  def combat_mode
    SQF.combatMode @this
  end

end
