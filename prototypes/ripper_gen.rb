require 'ripper'
require 'erb'

r = Ripper.new("1+1")

erb = <<-ERB
  def <%= @func -%> *input
    puts "-" * 80
    puts "name: <%= @func -%>"
    pp input
  end
ERB
@includes = []
@scr = []
@scr << "class Foo < Ripper"
r.methods.each do |m|
  if m.to_s=~/^on_/
    @x = m.to_s.sub("on_", '')
    @func = m.to_s
    @includes << 'Rarma::SQF::Compiler::Processor::%s' % @x.capitalize
    `mkdir -p processor`
    e = ERB.new(erb, nil, "-")
    @scr << e.result(binding)
  end
end
@scr << "end"

puts @scr.join("\n")
puts <<-R
ARGV.each do |a|
  f = Foo.new(File.read(a))
  f.parse
end
R
