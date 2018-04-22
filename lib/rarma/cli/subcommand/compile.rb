<<<<<<< HEAD
require 'rarma/sqf/compiler'
require "fileutils"
class PackagesList
  attr_accessor :packages
  def initialize
    @packages=[]
  end
  def get_binding
    binding
  end
end
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
    @includes = []
    #@includes << "#{Rarma.gem_root}/sqf/rarma/.include"
    @includes << opts[:include]

    if ARGV.count == 0
      $stderr.puts "No input files"
      exit 1
    end
    @packages = {}
    destdir = opts[:output] if opts[:output]
    destdir ||= "."
    ARGV.each do |arg|
      Rarma.logger.debug arg

      case true
        when Dir.exists?(arg)
          Dir["#{arg.gsub(/\/$/,'')}/**/*.rb"].each do |f|
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
    @packages.each do |k,v|
      outfile = "#{k}/__init__.sqf"
      pl = PackagesList.new
      v.each do |pkg|
        pl.packages << pkg
      end
      erb = ERB.new(File.read("#{Rarma.gem_root}/templates/__init__.erb"),nil,"-").result(pl.get_binding)
      f = File.open(outfile, "w")
      f.write(erb.to_s)
      f.close
    end unless @opts[:output].empty? rescue nil
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
    script = Rarma::SQF::Compiler.compile(arg)
    dirname = File.dirname out
    @packages[dirname] ||= []
    @packages[dirname] << out.gsub("#{@opts[:output]}", "").gsub(/^\//, '').gsub('/', '\\')
    FileUtils.mkdir_p(dirname)
    @includes.flatten.each do |inc|
      FileUtils.cp_r(inc, dirname)
    end unless @opts[:output].empty? rescue nil
    f = File.open(out, "w")
    f.write(script.to_sqf)
    f.close
  end
=======
require 'rarma/compiler'
class Rarma::CLI::Subcommand::Compile
  extend Rarma::CLI::Subcommand
  attr_reader :description
  def initialize
    @description = "Transcompile ruby to sqf code"
  end
  def main
    p = Trollop::Parser.new do
      banner <<EOB
Usage
  rarma [global options] compile [options] srcfile

#{@description}
EOB
      banner ""
      opt :output, 'SQF output file', :short => 'o', :default => 'script.sqf'
      opt :include, 'Include library path', :short => 'I', :type => :strings
    end

    @opts = Trollop::with_standard_exception_handling p do
      raise Trollop::HelpNeeded if ARGV.empty?
      p.parse
    end
    @opts[:include] ||= []
    @opts[:include] << '.'
    Rarma::Compiler.compile ARGV.shift, @opts
  end

>>>>>>> 1aa7ba52591fcc54cd093333fabb12ce2eff0d34
end
