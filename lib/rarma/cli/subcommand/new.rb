class Rarma::CLI::Subcommand::New
  extend Rarma::CLI::Subcommand
  attr_reader :description
  def initialize
    @description = "Create a new mission/addon from scratch"
  end
  def main
    p = Trollop::Parser.new do
      banner "Search for a series"
      opt :episode, "show detailed informations for an episode. can be num, name (also partial) or id", :short => 'e', :type => String
      conflicts :detailed, :episode
    end

    @opts = Trollop::with_standard_exception_handling p do
      raise Trollop::HelpNeeded if ARGV.empty?
      p.parse
    end

  end
end
