require 'yaml'
require 'fileutils'

task :devenv do
  config = YAML.load_file(File.join('config','development.yml'))
  unless config['steamid']
    $stderr.puts "Please set your steamid in config/development.yml."
    exit 1
  end


  # download steamcmd
  puts "Downloading steamCMD"
  sh 'wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz -O tmp/steamcmd_linux.tar.gz'

  puts "Extracting steamCMD to #{config['steamdir']}"
  FileUtils.mkdir_p(config['steamdir'])
  sh "tar xzf tmp/steamcmd_linux.tar.gz -C #{config['steamdir']}"

  puts "Installing arma3 to #{config['armadir']}"
  sh "./#{config['steamdir']}/steamcmd.sh +login #{config['steamid']} +force_install_dir #{config['armadir']} +app_update 233780 validate +exit"
end
