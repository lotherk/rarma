require 'yaml'
require 'fileutils'
require 'open-uri'

module Rarma; module Rake; module Task; module Environment
  def install_steam
    unless File.exists? File.join("tmp", File.basename(@steamcmd_url))
      puts "Downloading #{@steamcmd_url}"
      File.open(File.join("tmp", File.basename(@steamcmd_url)), "wb") do |file|
        file << open(@steamcmd_url).read
      end
      puts "download finished"
    else
      puts "File #{File.join("tmp", File.basename(@steamcmd_url))} already exists."
    end
  end

  def install_arma
    raise "not implemented"
  end

  def install_cpbo
    raise "not implemented"
  end

  def initialize config
    @config = config
    @steamcmd_url = if RUBY_PLATFORM=~/linux/
      "http://media.steampowered.com/installer/steamcmd_linux.tar.gz"
    elsif RUBY_PLATFORM=~/mingw/
      "http://media.steampowered.com/installer/steamcmd.zip"
    end
  end
  def config
    @config
  end
end; end; end; end

task :environment do
  config = YAML.load_file(File.join('config','development.yml'))
  unless config['steamid']
    $stderr.puts "Please set your steamid in config/development.yml."
    exit 1
  end
 
  FileUtils.mkdir_p('tmp')

  if RUBY_PLATFORM=~/linux/
    require './tasks/environment/linux.rb'
    installer = Rarma::Rake::Task::Environment::Linux.new config
  elsif RUBY_PLATFORM=~/mingw/
    require './tasks/environment/windows.rb'
    installer = Rarma::Rake::Task::Environment::Windows.new config
  else
    $stderr.puts "Unsupported platform #{RUBY_PLATFORM}"
    exit 1
  end

  installer.install_steam
  installer.install_arma
  installer.install_cpbo


end
