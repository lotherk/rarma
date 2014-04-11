class Rarma::Unit < Rarma::SQFObject
  attr_accessor :group, :event_handlers, :score, :rating, :rank, :weapons, :magazines, 
    :side, :skill, :subskills, :unitpos, :uniform, :vest, :headgear, :items, 
    :waypoints, :name, :formation_pos, :linked_items, :primary_weapon, :secondary_weapon,
    :primary_weapon_items, :secondary_weapon_items

  def initialize
    @group = nil
    @side = nil
    @event_handlers = []
    @score = 0
    @rating = nil
    @rank = nil
    @weapons = []
    @magazines = []
    @uniform = nil
    @vest = nil
    @headgear = nil
    @items = []
    @waypoints = []
    @unitpos = nil
    @name = nil
    @skill = nil
    @subskills = []
    @formation_pos = nil
    @linked_items = []
    @primary_weapon = nil
    @secondayr_weapon = nil
    @primary_weapon_items = []
    @secondary_weapon_items = []
  end
end
