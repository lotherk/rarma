require 'fileutils'
require "erb"
class Rarma::CLI::Subcommand::New
  attr_reader :description
  def initialize
    @description = "Create new mission mission"
  end
  def main
    opts = Trollop::options do
      usage = <<-USAGE
Usage: rarma new [options] name
USAGE
      banner usage
      opt :force, "Force overriding existing mission"
      opt :title, "Set mission title", :default => ''
    end


    mission_path = ARGV.shift
    mission_name = File.basename(mission_path)


    if File.exists?(mission_path) and !opts[:force]
      $stderr.puts "#{mission_path} already exists."
      exit 1
    end

    @mission = {}
    @mission[:name] = File.basename(mission_name)
    @mission[:author] = ENV['USER']
    @mission[:title] = opts[:title]

    FileUtils.mkdir_p(mission_path)
    template_base = File.join(Rarma.gem_root, 'share', 'mission', 'new')
    Dir[File.join(template_base, '**', '*')].each do |file|
      base_dir = File.join(mission_path, File.dirname(file).gsub(template_base, ''))
      FileUtils.mkdir_p(base_dir)

      if File.directory?file
        FileUtils.mkdir_p(base_dir)
      else
        if file =~/\.erb$/
          @file_name = File.basename(file).gsub!(/\.erb/, '')
          erb = ERB.new(File.read(file), nil, '-')
          content = erb.result(binding)
          outfile = File.join(base_dir, @file_name)
          File.open(outfile, 'w') { |f| f.write(content) }
        else
          FileUtils.cp(file, base_dir)
        end
      end
    end
  end
end
