class Rarma::Model::Vehicle < Rarma::Model::Object
  attr_accessor :lock
  def initialize
    super
  end

  def locked?
    @lock
  end
end
