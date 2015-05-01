require "logger"
require "colored"
require "rarma/version"


module Rarma
  def self.logger(output=STDOUT)
    unless @logger
      @logger = Logger.new(output)
      @logger.formatter = proc { |severity, datetime, progname, msg|
        kaller = caller[4]
	# fix for windows
	if RUBY_PLATFORM=~/mingw/
	  # replace leading DRIVE: from kaller
	  kaller.gsub!(%r{^[A-Za-z]:}, '/')
	end
	# end fix
        file, ln, func  = kaller.split(":")
        _nil, func = func.split("`")
        func.gsub!(/[<>']/, "")
        file = File.basename(file)
        "#{datetime} #{severity} #{file}:#{func}:#{ln}: #{msg}\n"
      }
      @logger.level = Logger::INFO
    end
    @logger
  end
  def self.root
    Gem::Specification.find_by_name("rarma").gem_dir
  end
end
