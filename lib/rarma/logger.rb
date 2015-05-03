require "logger"
module Rarma
  class Logger < ::Logger
    def initialize output=STDOUT
      super
      @formatter = proc { |severity, datetime, progname, msg|
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
      @level = Logger::INFO
    end
  end
end
