#!/usr/bin/env ruby
require "nokogiri"
require "pp"
@funcs = []
Dir["*"].each do |f|
  page = Nokogiri::HTML(open(f))
  syntax = nil
  parameter = nil
  description = nil
  retval = nil
  examples = []
  title = page.css('title').text.split(" ")[0].chomp rescue nil
  page.css('dt').each_with_index { |m, i|
    syntax = page.css('dd')[i].text.chomp rescue nil if m.text =~ /^Syntax/ 
    parameter = page.css('dd')[i].text.chomp rescue nil if m.text =~ /^Parameter/
    description = page.css('dd')[i].text.chomp rescue nil if m.text =~ /^Description/
    retval = page.css('dd')[i].text.chomp rescue nil if m.text =~ /^Return/
    examples << page.css('dd')[i].text.chomp rescue nil if m.text =~ /^Example/
  }
  next unless syntax && parameter && description && retval && title
  next if title == 'a'
  next if title.strip.empty?
  next unless title.match(/^\w*$/)
  #puts "--" * 40
  #puts title
  #puts syntax
  # parse it
  left, right = syntax.split(title)
  if left
    left.strip!
    left.chomp!
    left.gsub!(/\s/, '')
    left = nil if left.empty?
  end
  if right
    right.strip!
    right.chomp!
    right.gsub!(/\s/, '')
    right = nil if right.empty?
  end
  h = {}
  h[:title] = title
  if description
    h[:description] = []
    description.split("\n").each do |d|
      h[:description] << d.strip
    end
    h[:parameters] = []
    parameter.split("\n").each do |p|
    l, r = p.split(":")
    h[:parameters] << [l, r]
    end
    h[:examples] = []
    examples.each do |ex|
      h[:examples] << ex.strip
    end
  end
  if left and right
    left.gsub!(/(\(|\))/, '')
    next unless left.match(/^\w*$/)
    # object method argument
    h[:body] = <<-SQF
    def #{title} _object, _value
      "_object #{title} _value"
    end
    SQF
  elsif left and !right
    #raise "#{title} #{syntax},left: #{left}, right: #{right}"
    next
  elsif right and !left
    h[:body] = <<-SQF
    def #{title} _value
      "#{title} _value"
    end
    SQF
  else
    #raise "#{title} #{syntax},left: #{left}, right: #{right}"
    next
  end
  @funcs << h
end

$stderr.puts @funcs.count.to_s +  " found"
@out = []
@out << <<-SQF
class SQF < Rarma::SQF::Class
SQF
@funcs.each do |f|
  @out << "\n\n"
  @out << '    native :%s' % f[:title]
  f[:description].each do |d|
    @out << '    # %s' % d.chomp.strip
  end

  @out << <<-SQF
    #
    # ==== Parameters
    #
  SQF
  f[:parameters].each do |p|
    @out << "    # * +#{p[0]}+ - #{p[1]}".chomp
  end
  @out << <<-SQF
    #
    # ==== Examples
    #
    SQF
  f[:examples].each do |ex|
    ex.split("\n").each do |ex|
      @out << <<-SQF
    #    #{ex.strip.chomp}
      SQF
    end
  end

  @out << f[:body]
end
@out << <<-SQF
end
SQF
@final = []
@out.each_with_index do |o, i|
  next unless o
  o.chomp!
  next if o.empty?
  next if o.match(/^\s*$/)
  @final << o
end
puts @final.compact.join("\n")
