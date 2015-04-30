require 'rarma/arma'

task :server do
  env = ENV['ENVIRONMENT'].lowercase rescue 'development'
  config = YAML.load_file(File.join('config',"#{env}.yml"))
  config['environment'] ||= env
  server = Rarma::Arma::Server.new(config)

  server.run

  if RUBY_PLATFORM=~/linux/
  elsif RUBY_PLATFORM=~/mingw/
  else
    $stderr.puts "Unsupported platform #{RUBY_PLATFORM}"
    exit 1
  end
end
