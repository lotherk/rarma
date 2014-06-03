class Rarma::Framework::Mission::Parameter
  def self.parameters key, opts={}, &block
    Rarma.logger.debug "new parameter group #{key} with #{opts}"
    title = opts[:title]
    title ||= "#{key.to_s.capitalize} Settings"
    puts "class rarma_params_#{key}_title {"
    puts "  title = \"-- #{title}:\";"
    puts "  values[] = {0};"
    puts "  default = 0;"
    puts '  texts[] = {""};'
    puts "};"
    @key = key
    block.call if block_given?
  end

  def self.param key, opts={}, &block
    title = opts[:title] rescue "#{key.to_s.capitalize} Settings"
    values = "{0}"
    texts = '{““}'
    otexts = opts[:texts].clone rescue []
    ovalues = opts[:values].clone rescue []

    if opts[:texts] and !opts[:values]

      texts = "{\"#{opts[:texts].join('","')}\"}"
      values = []
      (opts[:texts].count).times do |i|
        values << i
      end
      values = "{#{values.join(",")}}"
    elsif opts[:values] and !opts[:texts]
      values = "{#{opts[:values].join(',')}}"
      texts = "{\"#{opts[:values].join('","')}\"}"
    elsif opts[:values] and opts[:texts]
      values = "{#{opts[:values].join(',')}}"
      texts = "{\"#{opts[:texts].join('","')}\"}"
    else
      raise "Either values or texts must be set for #{key} param"
    end


    default = opts[:default] rescue 0
    default ||= 0
    if default.class == Symbol
      default = otexts.find_index(default)
    end
    puts "class rarma_params_#{@key.downcase}_#{key.downcase}_title {"
    puts "  title = \"-- #{title}:\";"
    puts "  values[] = #{values};"
    puts "  default = #{default};"
    puts "  texts[] = #{texts};"
    puts "};"
    block.call if block_given?
  end
end
