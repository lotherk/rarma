require 'rarma/arma'

task :server do
  env = ENV['ENVIRONMENT'].lowercase rescue 'development'
  config = YAML.load_file(File.join('config','server', 'development.yml'))

  server = Rarma::Arma::Server.new(config['server'])


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
end
