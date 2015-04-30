module Rarma::CLI::Subcommand::New::Addon
  def self.new opts
    ARGV.each do |addon_name|
      Rarma.logger.debug "Creating #{addon_name}"
    end
  end
end
