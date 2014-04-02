class Rarma::Client
  def initialize client
    @client = client
    @handler = Rarma::Server::Handler.new
    run
  end

  def run
    while !@client.closed?
      line = @client.gets
      line.chomp!
      line.strip!
      cmd, rest = line.split(" ", 2)
      if @handler.respond_to?cmd.to_sym
        @handler.send(cmd.to_sym, [@client, rest])
      else
        @client.puts "Unknown command: #{line}"
      end
    end
    @client.puts "CLOSE"
    @client.close
    destroy
  end
end
