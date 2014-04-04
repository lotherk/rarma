module Rarma::Server::Handler::Sqf
  def process_sqf json
    # target?
    target = json[:target] rescue 0
    script = json[:script] rescue raise "no script"
    #Rarma::Queue.for(target).script(script)
  end
end
