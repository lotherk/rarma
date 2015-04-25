class Rarma::Rake::Task::Environment::Linux
  include Rarma::Rake::Task::Environment

  def install_steam
    unless File.directory? config['steamdir']
      super

      puts "Extracting steamCMD to #{config['steamdir']}"
      FileUtils.mkdir_p(config['steamdir'])
      puts `tar xzf tmp/steamcmd_linux.tar.gz -C #{config['steamdir']}`
    else
      puts "#{config['steamdir']} already exists, remove to reinstall."
      puts ""
    end
  end

  def install_arma
    puts "Installing/Updating arma3 to #{config['armadir']}"
    puts `./#{config['steamdir']}/steamcmd.sh +login #{config['steamid']} +force_install_dir #{config['armadir']} +app_update 233780 +exit`
    puts ""
  end

  def install_cpbo
    unless File.directory? config['cpbodir']
      puts "Cloning https://github.com/iAnomaly/cpbo to #{config['cpbodir']}"
      puts `git clone https://github.com/iAnomaly/cpbo #{config['cpbodir']}`
      puts "Compiling cpbo"
      puts `cd #{config['cpbodir']}; make`
    else
      puts "#{config['cpbodir'] } already exists, remove to reinstall"
    end
    puts ""
  end

end
