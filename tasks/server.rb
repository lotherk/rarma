require 'rarma/arma'

task :server do
  env = ENV['ENVIRONMENT'].lowercase rescue 'development'
  config = YAML.load_file(File.join('config',File.join(env, '.yml')))

  server = Rarma::Arma::Server.new(config['server'])


  if RUBY_PLATFORM=~/linux/
  elsif RUBY_PLATFORM=~/mingw/
  else
    $stderr.puts "Unsupported platform #{RUBY_PLATFORM}"
    exit 1
  end
end
