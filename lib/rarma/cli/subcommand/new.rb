<<<<<<< HEAD
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
=======
require 'erb'
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

  def self.install_skeleton_files directory, skels
    skels.each do |skel|
      Dir[File.join(Rarma.root, "share", "skeleton", skel.to_s, '**', '/', '*')].each do |e|
        puts e
>>>>>>> 1aa7ba52591fcc54cd093333fabb12ce2eff0d34
      end
    end
  end
end
