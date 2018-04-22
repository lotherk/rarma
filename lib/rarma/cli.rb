require 'rarma'
require 'trollop'
<<<<<<< HEAD
module Rarma::CLI
def self.options
=======

module Rarma::CLI
  def self.options
>>>>>>> 1aa7ba52591fcc54cd093333fabb12ce2eff0d34
    @options
  end
  def self.main
    subs = []
    Rarma::CLI::Subcommand.subcommands.each { |subcmd| subs << subcmd.to_s.downcase }
    p = Trollop::Parser.new do
      version Rarma::VERSION
<<<<<<< HEAD
      banner "rarma #{Rarma::VERSION} (c) 2014 Konrad Lother"
      banner ""
      banner "usage: rarma [global options] <subcommand> [subcommand options]"
      banner ""
      banner "Available subcommands:"
=======
      banner <<EOB
rarma #{Rarma::VERSION}

Usage
  rarma [global options] <subcommand> [subcommand options|

Available subcommands:
EOB
>>>>>>> 1aa7ba52591fcc54cd093333fabb12ce2eff0d34
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
      opt :debug, "Enable debug messages", :default => false, :short => '-d'
      stop_on subs
    end
<<<<<<< HEAD
    opts = Trollop::with_standard_exception_handling p do
=======
    @options = Trollop::with_standard_exception_handling p do
>>>>>>> 1aa7ba52591fcc54cd093333fabb12ce2eff0d34
      raise Trollop::HelpNeeded if ARGV.empty?
      p.parse
    end

<<<<<<< HEAD
    Rarma.logger.level = Logger::DEBUG if opts[:debug]
    subcmd = ARGV.shift
    Rarma::CLI::Subcommand[subcmd].main
=======
    Rarma.logger.level = Logger::DEBUG if @options[:debug]

    subcmd = ARGV.shift

    begin
      Rarma::CLI::Subcommand[subcmd].main
    rescue RuntimeError => e
      unless @options[:debug]
        puts "Error: #{e.message}"
        exit 1
      else
        raise
      end
    rescue
      raise
    end

>>>>>>> 1aa7ba52591fcc54cd093333fabb12ce2eff0d34
  end
end

require 'rarma/cli/subcommand'
