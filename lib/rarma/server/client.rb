class Rarma::Server::Client
  def initialize client
    @client = client
    @handler = Rarma::Server::Handler.new(@client)
    run
  end

  def run
    while !@client.closed?
      line = @client.gets
      line.chomp!
      line.strip!

      break if line.length == 0 # end connection

      cmd, rest = line.split(" ", 2)
      cmd = "process_#{cmd}".to_sym 
      break unless @handler.respond_to?cmd

      @handler.send(cmd, rest)
    end
    @client.puts "CLOSE"
    @client.close
    destroy
  end
end
