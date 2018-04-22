<<<<<<< HEAD
require "rarma/version"
require "logger"
module Rarma

  def self.gem_root
    @gem_root ||= Gem::Specification.find_by_name("rarma").gem_dir
  end

  def self.logger(output=STDOUT)
    unless @logger
      @logger = Logger.new(output)
      @logger.formatter = proc { |severity, datetime, progname, msg|
        kaller = caller[4]
        file, ln, func = kaller.split(":")
        _nil, func = func.split("`")
        func.gsub!(/[<>']/, "")
        file = File.basename(file)
        "#{datetime} #{severity} #{file}:#{func}:#{ln}: #{msg}\n"
      }
      @logger.level = Logger::WARN
    end
    @logger
  end

=======
require "logger"
require "colored"
require "rarma/version"
require "rarma/logger"

module Rarma
  def self.logger(output=STDOUT)
    unless @logger
      @logger = Rarma::Logger.new(output)
      @logger.level = Logger::INFO
    end
    @logger
  end
>>>>>>> 1aa7ba52591fcc54cd093333fabb12ce2eff0d34
  def self.root
    Gem::Specification.find_by_name("rarma").gem_dir
  end
end
