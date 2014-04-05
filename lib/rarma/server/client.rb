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
        @client.puts parse(json)
      rescue Exception => e
        @client.puts JSON.dump(str)
        Rarma.logger.debug e
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
