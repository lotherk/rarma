require 'open3'

module Rarma::Rake
  def self.exec cmd, args=[], opts = {}
    cmd_line = "#{cmd} #{args.join(' ')}"
  end
end
