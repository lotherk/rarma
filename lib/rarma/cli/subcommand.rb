module Rarma::CLI::Subcommand
  def description d
    doc[:description] = d
  end

  def doc
    @doc ||= {}
  end

  def self.[] index
    @subcmds ||= {}
    return @subcmds[index] if @subcmds[index]
    classname = "Rarma::CLI::Subcommand::#{index.to_s.capitalize}"
    klass = eval(classname)
    @subcmds[index] = klass.new
  end
  def self.subcommands
    @subcommands ||= self.load_subcommands
  end

  private
  def self.load_subcommands
    spec = Gem::Specification.find_by_name("rarma")
    gem_root = spec.gem_dir
    Dir["#{gem_root}/lib/rarma/cli/subcommand/*.rb"].each do |file|
      Rarma.logger.debug "Loading subcommand file #{file}"
      load file
    end
    @subcommands = Rarma::CLI::Subcommand.constants.select { |c| Rarma::CLI::Subcommand.const_get(c).is_a? Class }
  end
end
