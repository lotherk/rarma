module Rarma::Util
  module Tidy
    def self.tidy script
      spaces = 4
      indent = 0
      res = []
      script = script.split("\n") if script.is_a?String
      script.each do |n|
        n.chomp!
        n.strip!
        next if n.empty?
        if n=~/^CLASS.*;$/
          n.gsub!(/;/, '')
        end
        if n=~/^}/ or n =~ /^ENDCLASS/
          indent -= spaces
        end
        indent = 0 if indent < 0
        line = "#{" " * indent}#{n}"
        line += ";" unless line.match(/(\;$|\{$|\:$|^CLASS)|^\s*#|^\/|\/$/)
        res << line
        if n=~ /{$/ or n=~/^CLASS.*$/
          indent += spaces
        end
      end
      res

    end
  end
end
