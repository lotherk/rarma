require 'rarma/sqf/compiler'
require "fileutils"
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
      opt :output, "Destination folder", :type => String
      opt :output_strip, "Strip leading n directories from destination folder", :default => 0
      opt :include, "Include file/folder into destination root and sub folders", :multi => true, :type => String
    end
    FileUtils.mkdir_p(opts[:output]) if opts[:output]
    @opts = opts
    opts[:include] ||= []
    opts[:include] << "#{Rarma.gem_root}/sqf/rarma/.include"

    if ARGV.count == 0
      $stderr.puts "No input files"
      exit 1
    end

    destdir = opts[:output] if opts[:output]
    destdir ||= "."
    ARGV.each do |arg|
      Rarma.logger.debug arg

      case true
        when Dir.exists?(arg)
          Dir["#{arg}/**/*.rb"].each do |f|
            out = "#{destdir}/#{output_strip(f)}.sqf"
            compile_file f, out
          end
        when File.exists?(arg)
          out = "#{destdir}/#{output_strip(arg)}.sqf"
          compile_file arg, out
        else
          $stderr.puts "Can not handle input #{arg}"
      end
    end
  end

  private
  def output_strip(out)
    tmp = []
    out.split("/").each_with_index do |o,i|
      next if i < @opts[:output_strip]
      tmp << o
    end
    out = tmp.join("/")
    out
  end
  def compile_file arg, out
    puts "Compiling #{arg} -> #{out}"
    script = Rarma::SQF::Compiler.compile(arg)
    dirname = File.dirname out
    FileUtils.mkdir_p(dirname)
    @opts[:include].each do |inc|
      FileUtils.cp_r(inc, dirname)
    end
    f = File.open(out, "w")
    f.write(script.to_sqf)
    f.close
  end
end
