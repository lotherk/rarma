require 'socket'
class Rarma::Server
  def self.start(opts)
    Rarma.logger.debug "Invoking Rarma Server with #{opts}"
    self.new(opts).start
  end

  def initialize opts
    Rarma.logger.debug "Initializing Rarma Server with #{opts}"
    @opts = opts
    @clients = []
  end

  def start
    Rarma.logger.info "Starting Rarma Server with #{@opts}"
    run
    self
  end

  def run
    server = TCPServer.new @opts[:port]
    loop do
      Thread.start(server.accept) do |client|
        Rarma.logger.debug "Accepting new client: #{client}"
        @clients << Rarma::Server::Client.new(client)
      end
    end
  end
end
require 'rarma/server/handler'
require 'rarma/server/client'
