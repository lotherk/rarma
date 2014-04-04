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
        parse json
      rescue Exception => e
        Rarma.logger.error "Error parsing json: #{e.message}"
        break
      end
    end
    begin
      send_message JSON.dump({ :message => "Good bye" })
    rescue Exception => e
        Rarma.logger.error "Error sending json: #{e.message}"
    end
    @client.close
  end

  def parse json
    raise "no command in json found #{json}" unless json["command"]
    command = ("process_" + json["command"].downcase).to_sym
    if @handler.respond_to?command
      @handler.send(command, json)
    else
      raise "Unknown command or unknown json #{json}"
    end
    
  end

  def send_message json
    @client.puts json
  end
end
