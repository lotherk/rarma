require 'json'
class Rarma::Server::Client
  def initialize client
    @client = client
    @handler = Rarma::Server::Handler.new(@client)
    run
  end

  def run
    while !@client.closed?
      line = @client.gets
      line.strip!
      line.chomp!
      Rarma.logger.debug "Client sent: #{line}"
      begin
        json = JSON.load(line)
        res = parse(json)
        # move this to somewhere
        res = '"nil"' if res.to_s == 'null'
        @client.puts JSON.dump({ :result => res.to_s })
      rescue Exception => e
        Rarma.logger.debug e
        msg = { :exception => e.message }
        @client.puts JSON.dump(msg)
        Rarma.logger.debug e.message
      end
    end
  end

  def parse json
    raise "no command in json found #{json}" unless json["module"]
    command = ("process_" + json["module"].downcase).to_sym
    if @handler.respond_to?command
      res = @handler.send(command, json)
      return JSON.dump(res)
    else
      raise "Unknown command or unknown json #{json}"
    end
  end

  def send_message json
    @client.puts json
  end
end
