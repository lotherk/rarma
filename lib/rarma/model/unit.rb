class Rarma::Model::Unit < Rarma::Model::Object
  attr_reader :weapons, :magazines, :helmet, :uniform, :vest,
  :backpack, :uniform_items, :vest_items, :backpack_items

  def initialize
    super
  end
end
