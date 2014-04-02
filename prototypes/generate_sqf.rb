#!/usr/bin/env ruby
require "nokogiri"
require "pp"
@funcs = []
Dir["*"].each do |f|
  page = Nokogiri::HTML(open(f))
  title = page.css('title').text.split(" ")[0].chomp rescue nil
  h = {}
  h[:title] = title
  page.css('div.command_description').css('dl').each do |m|
    out = m.text

    if out=~/^Syntax:/
      h[:title] = m.css('b').text
      spl = out.split("\n")
      x = {}
      s = :syntax
      spl.each do |l|
        l.strip!
        if l=~/^Syntax:/
          s = :syntax
        elsif l=~/^Parameters:/
          s = :params
        elsif l=~/^Return Value:/
          s = :return
        end
        x[s] ||= []
        x[s] << l
      end
      x.each do |k, v|
        data = v.join("\n").split(":", 2)[1].strip rescue nil
        next unless data
        if k == :params
          first = true
          data.split("\n").each do |d|
            _k, _v = d.split(":", 2)
            next if _k=~/^\[/ and first
            first = false
            next unless _k and _v
            _k.gsub!(/(\(|\)|-)/, "")
            h[k] ||= []
            h[k] << [_k.strip, _v.strip]
          end
        else
          h[k] = data.split("\n")
        end

      end
    elsif out=~/^Game:/
      spl = out.split("\n")
      h[:game] = spl[0].split(":", 2)[1].strip
      h[:version] = spl[1].split(":", 2)[1].strip
    elsif out=~/^Description:/
      h[:description] = out.split(":", 2)[1].strip.split("\.").join("\.\n").split("\n")
    elsif out=~/^Multiplayer:/
      spl = out.split("\n")
      x = {}
      s = :multiplayer
      spl.each do |l|
        l.strip!
        if l=~/^Multiplayer:/
          s = :multiplayer
        elsif l=~/^See also:/
          s = :seealso
        end
        x[s] ||= []
        x[s] << l
      end
      x.each do |k, v|
        data = v.join("\n").split(":", 2)[1].strip rescue nil
        next unless data
        if k == :seealso
          vals = []
          data.split(",").each do |t|
            t.strip!
            if t=~/^[a-z]/
              vals << "##{t}"
            else
              vals << t
            end
          end
          h[k] = vals.join(", ")
        else
          h[k] = data.split("\n")
        end
      end
    elsif out=~/^Example\s*\d*:/
      spl = out.split("\n")
      x = {}
      s = :example_1
      spl.each do |l|
        #l.strip!
        if m = l.match(/^Example\s*(\d+):/)
          s = "example_#{m[1].to_s}".to_sym
          l = l.split(":", 2)[1]
        end
        x[s] ||= []
        x[s] << l
      end
      h[:examples] = x
    elsif out=~/^See also:/
      h[:seealso] =  out.split(":", 2)[1].strip.split("\n")
    end
  end
  @funcs << h
end

$stderr.puts @funcs.count.to_s +  " found"
@out = []
@out << <<-SQF
module Rarma::SQF::Functions
SQF
require 'erb'
func_erb = <<-ERB
    # <%= @data[:description].shift rescue "No description. See ...." %>
    # <% if @data[:description].count > 0 %>
    # ==== Description
    # <% @data[:description].reject(&:empty?).each do |d| %>
    # <%= d.strip.chomp %>
    # <% end rescue nil -%> <% end rescue nil %>
    # ==== Syntax
    #
    #      <%= @data[:syntax].join("") rescue nil %>
    #
    # ==== Parameters
    # <% @data[:params].reject(&:empty?).each do |k, v| %>
    # *    +<%= k -%>+ - <%= v -%>
  <% end rescue nil %>
    #
    # ==== Returns
    #
    #      <%= @data[:return].join("") rescue "Nothing" %>
    #
    # ==== Multiplayer
    # <% @data[:multiplayer].reject(&:empty?).each do |note| %>
    # <%= note %>
    # <% end rescue nil %>
    # ==== See Also
    # <% if @data[:seealso] %>
    # <%= @data[:seealso].strip.gsub(/\n/, '') %>
    # <% end rescue nil %>
    # Official Wiki: https://community.bistudio.com/wiki/<%= @data[:title] %>
    #
    # ==== Examples
    # <% @data[:examples].each_with_index do |h, i| %>
    # ====== Example <%= i + 1 %>:
    # <% h[1].reject(&:empty?).each do |l| %>
    #    <%= l -%>
<% end rescue nil %>
    # <% end rescue nil %>
    def <%= @data[:title] %> <%= @m_signature %>
      "<%= @body -%>" 
    end
ERB
require "erb"
@script = ["module Rarma::SQF::Functions"]
@funcs.each do |v|
  @data = v
  next unless  @data[:title] =~ /^[A-Za-z0-9]*$/
  next if @data[:title].to_s.length < 2
  erb = ERB.new(func_erb, nil, "-")
  @body = @data[:syntax].join("") rescue next
  @body = @body.split("=", 2)[1] if @body=~/=/
  left, right = @body.split(@data[:title], 2)
  right = "" unless right
  left = "" unless left
  left.strip!
  right.strip!
  @body = nil
  if !left.empty? and !right.empty?
    @m_signature = '_obj, _args'
    @body = "_obj #{@data[:title]} _args;"
  elsif left.empty? and !right.empty?
    @m_signature = '_args'
    @body = "#{@data[:title]} _args;"
  elsif !left.empty? and right.empty?
    next
  else
    @m_signature = ''
    @body = @data[:title]
  end
  @body.strip!
  @script << erb.result(binding)
end
@script << 'end'

puts @script.join("\n")
