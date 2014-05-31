class Rarma::Framework::Mission::Description

  def self.method_missing(m, *args, &block)
    if block_given?
      # m is class
      puts "class #{m.to_s.capitalize} {"
      block.call
      puts "}"
    else
      attrib = []
      m.to_s.split("_").each_with_index do |e, i|
        if i == 0
          attrib << e
        else
          attrib << e.capitalize
        end
      end
      val = '""'
      if args.count > 0
        if args.count == 1
          if args[0].class == String
            val = '"' + args[0] + '"'
          else
            val = args[0]
          end
        elsif args.count > 1
          val = args.to_s
        end
        puts attrib.join("") + " = " + val.to_s + ";"
      end
    end
  end
end
