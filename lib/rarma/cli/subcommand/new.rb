class Rarma::CLI::Subcommand::New
  extend Rarma::CLI::Subcommand
  attr_reader :description
  def initialize
    @description = "Create a new mission/addon from scratch"
  end
  def main
    p = Trollop::Parser.new do
      banner "Usage"
      banner "Create a mission/addon from scratch"
      opt :mission, 'create a new mission', :short => 'm'
      opt :addon, 'create a new addon', :short => 'a'
      conflicts :mission, :addon
    end

    @opts = Trollop::with_standard_exception_handling p do
      raise Trollop::HelpNeeded if ARGV.empty?
      p.parse
    end

  end
end
