require "rarma/server"
class Rarma::CLI::Subcommand::Server
  attr_reader :opts
  def initialize
    @opts = nil
  end

  def main
    @opts = Trollop::options do
      opt :port, "Port number", :default => 31337
    end

    Rarma::Server.start(@opts)
  end
end
