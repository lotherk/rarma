require 'stringio'
require 'rarma/framework'
class Rarma::CLI::Subcommand::Generator
  attr_reader :description
  def initialize
    @description = "Generate a mission"
  end
  def main
    opts = Trollop::options do
      usage = <<-USAGE
Usage: rarma generate [options] src dst
USAGE
      banner usage
      opt :output, "Destination folder", :type => String
      opt :output_strip, "Strip leading n directories from destination folder", :default => 0
      opt :include, "Include file/folder into destination root and sub folders", :multi => true, :type => String
    end
    src = ARGV.shift
    src ||= "."
    dst = ARGV.shift
    dst ||= "./generated"
    Rarma.logger.debug "Building filetree for #{src}..."
    files = {}
    Dir["#{src}/**/*.rb"].sort.each do |f|
      spl = f.split(".")
      type = :eval
      if spl.count > 2
        if spl[-2].downcase == 'sqf'
          type = :compile
        end
      end
      files[type] ||= []
      files[type] << f
    end

    Rarma.logger.debug "Got:\n#{files}"

    stdout = StringIO.new
    $stdout = stdout
    files[:eval].each do |file|
      load file
    end
    $stdout = STDOUT
    stdout.rewind

    Rarma.logger.debug "Output created: #{stdout.read}"
  end
end
