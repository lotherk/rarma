require 'open3'

module Rarma::Rake
  def self.exec cmd, args=[]
    cmd_line = "#{cmd} #{args.join(' ')}"
    Open3.popen3(cmd_line) do |stdin, stdout, stderr, wait_thr|
      if stdout.read
        Rarma.logger.info stdout.read
      end

      if stderr.read
        Rarma.logger.error stderr.read.red
      end
    end
  end
end
