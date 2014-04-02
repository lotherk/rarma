require "rarma/version"
require "logger"
require "rarma/sqf"
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

  def self.root
    Gem::Specification.find_by_name("rarma").gem_dir
  end
end
