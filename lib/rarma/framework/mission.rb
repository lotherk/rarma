class Rarma::Framework::Mission
  require "rarma/framework/mission/parameter"
  require "rarma/framework/mission/playable"
  extend Rarma::Framework::Mission::Parameter
  extend Rarma::Framework::Mission::Playable
  
  def self.script script
    puts script
  end
end
