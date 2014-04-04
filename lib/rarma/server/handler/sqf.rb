module Rarma::Server::Handler::Sqf
  def process_sqf json
    # target?
    client = json["client"] rescue 0
    target = json["target"] rescue false
    jip = json["jip"] rescue false
    script = json["script"] rescue raise("no script")
    sqf = <<-SQF
[[[], { #{script} }],"BIS_fnc_spawn",#{target},#{jip}] spawn BIS_fnc_MP
    SQF
    Rarma.logger.debug "Executing SQF:\n#{sqf}"
    #Rarma::Queue.for(target).script(script)
  end
end
