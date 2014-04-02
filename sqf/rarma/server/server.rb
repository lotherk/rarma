class Rarma::Bridge < Rarma::Object
  def initialize
  end

  def self.instance
    @instance || self.new
  end
end


