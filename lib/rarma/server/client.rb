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
        Rarma.logger.debug "JSON: #{json}"
      rescue Exception => e
        Rarma.logger.error "Error parsing json: #{e.message}"
        break
      end
      send_message JSON.dump({ :this => "is", :a => ["simple"],:test => { "with" => "some things."}})
    end
    begin
      send_message JSON.dump({ :message => "Good bye" })
    rescue Exception => e
        Rarma.logger.error "Error sending json: #{e.message}"
    end
    @client.close
  end

  def send_message json
    @client.puts json
  end
end
