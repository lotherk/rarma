require 'fileutils'

module Rarma::CLI::Subcommand::New::Addon
  def self.new opts
    ARGV.each do |addon_name|
      Rarma.logger.debug "Creating #{addon_name}"

      FileUtils.mkdir_p(addon_name)

      Rarma::CLI::Subcommand::New.install_skeleton_files addon_name, [:common, :addon]
    end
  end

end
