require 'rarma'
require 'trollop'
module Rarma::CLI
def self.options
    @options
  end
  def self.main
    subs = []
    Rarma::CLI::Subcommand.subcommands.each { |subcmd| subs << subcmd.to_s.downcase }
    p = Trollop::Parser.new do
      version Rarma::VERSION
      banner "rarma #{Rarma::VERSION} (c) 2014 Konrad Lother"
      banner ""
      banner "usage: rarma [global options] <subcommand> [subcommand options]"
      banner ""
      banner "Available subcommands:"
      Rarma::CLI::Subcommand.subcommands.each do |subcmd|
        subcmd = subcmd.downcase
        len = 16
        diff = len - subcmd.length
        inst = Rarma::CLI::Subcommand[subcmd]
        desc = Rarma::CLI::Subcommand[subcmd].description rescue nil
        banner "  %s%#{diff}s - %s" % [subcmd, "", desc]
      end
      banner ""
      banner "Global options:"
      opt :language, "Language", :default => "en", :short => '-l'
      opt :debug, "Enable debug messages", :default => false, :short => '-d'
      stop_on subs
    end
    @options = Trollop::with_standard_exception_handling p do
      raise Trollop::HelpNeeded if ARGV.empty?
      p.parse
    end
    subcmd = ARGV.shift
    Rarma::CLI::Subcommand[subcmd].main
  end
end

require 'rarma/cli/subcommand'
