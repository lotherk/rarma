class Rarma::CLI::Subcommand::New
  extend Rarma::CLI::Subcommand
  attr_reader :description
  def initialize
    @description = "Create a new mission/addon from scratch"
  end
  def main
    p = Trollop::Parser.new do
      banner <<EOB
Usage
  rarma [global options] new [-a|-m] [options] name

Create a mission/addon from scratch.
EOB
      banner ""
      opt :mission, 'create a new mission', :short => 'm'
      opt :addon, 'create a new addon', :short => 'a', :default => true
      opt :description, 'short description', :short => 'D', :default => ''
      opt :author, "author name", :default => ENV['USER'], :short => 'A'
      opt :version, "initial version", :default => '0.1.0', :short => 'V'
      opt :island, "specify island (only for missions)", :multi => true, :default => 'Altis', :short => 'I'
      opt :name, "overwrite name", :short => 'N', :default => ''
      conflicts :mission, :addon
      conflicts :island, :addon
    end

    @opts = Trollop::with_standard_exception_handling p do
      raise Trollop::HelpNeeded if ARGV.empty?
      p.parse
    end


    if @opts[:mission]
      require 'rarma/cli/subcommand/new/mission.rb'
      Rarma::CLI::Subcommand::New::Mission.new @opts
    elsif @opts[:addon]
      require 'rarma/cli/subcommand/new/addon.rb'
      Rarma::CLI::Subcommand::New::Addon.new @opts
    end
  end
end
