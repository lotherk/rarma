require 'rarma/sqf/compiler'
class Rarma::CLI::Subcommand::Compile
  attr_reader :description
  def initialize
    @description = "Compile ruby to sqf"
  end
  def main
    opts = Trollop::options do
      usage = <<-USAGE
Usage: rarma compile [options] src [src2 src3 srcN]
USAGE
      banner usage
      opt :output, "Output file/directory", :type => String
    end

    if ARGV.count == 0
      $stderr.puts "No input files"
      exit 1
    end

    ARGV.each do |arg|
      Rarma.logger.debug arg

      case true
        when Dir.exists?(arg)
          Rarma.logger.debug "Target is a directory"
          destdir = File.dirname opts[:output] if opts[:output]
          destdir ||= "."
          Dir["#{arg}/**/*.rb"].each do |f|
            out = "#{destdir}/#{f}.sqf"
            Rarma.logger.debug "Compiling #{f} to #{out}"
            compile_file f, out
          end
        when File.exists?(arg)
          out = opts[:output]
          out ||= "#{arg}.sqf"
          compile_file arg, out 
        else
          $stderr.puts "Can not handle input #{arg}"
      end
    end
  end

  private
  def compile_file arg, out
    script = Rarma::SQF::Compiler.compile(arg)
    f = File.open(out, "w")
    f.write(script.to_sqf)
    f.close
  end
end
