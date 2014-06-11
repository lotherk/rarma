require 'fileutils'
class Rarma::CLI::Subcommand::New
  attr_reader :description
  def initialize
    @description = "Create new mission project"
  end
  def main
    opts = Trollop::options do
      usage = <<-USAGE
Usage: rarma new [options] name
USAGE
      banner usage
      opt :path, "Create project in the given path", :default => '.'
      opt :overwrite, "Overwrite project folder"
      opt :force, "Force override existing files"
    end

    project_name = ARGV.shift
    project_path = opts[:path] + "/" + project_name

    if File.exists?(project_path) and !opts[:overwrite]
      $stderr.puts "#{project_path} already exists."
      exit 1
    end

    FileUtils.mkdir_p(opts[:path])

    Dir["#{Rarma.gem_root}/templates/mission/**/*"].each do |file|
      Rarma.logger.debug "Template file #{file}"
    end

    FileUtils.cp_r("#{Rarma.gem_root}/templates/mission", project_path)
    FileUtils.mkdir_p(project_path + "/lib/" + project_name)
  end
end
