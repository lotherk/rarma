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

    Dir.glob["#{src}**/*.rb"].each do |f|
      Rarma.logger.debug "Got #{f}"
    end
  end
end
