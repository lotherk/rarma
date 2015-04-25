require 'yaml'
require 'fileutils'

module Rarma; module Rake; module Task; module Environment
  def install_steam
    raise "not implemented"
  end

  def install_arma
    raise "not implemented"
  end

  def install_cpbo
    raise "not implemented"
  end

  def initialize config
    @config = config
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

  if RUBY_PLATFORM=~/linux/
    require './tasks/environment/linux.rb'
    installer = Rarma::Rake::Task::Environment::Linux.new config
  else
    $stderr.puts "Unsupported platform #{RUBY_PLATFORM}"
  end

  installer.install_steam
  installer.install_arma
  installer.install_cpbo


end
