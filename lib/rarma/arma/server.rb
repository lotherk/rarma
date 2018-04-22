require 'open3'

module Rarma::Arma
  class Server
    attr_reader :config
    def initialize
    end

    def initialize config
      @config = config
      @server = config['server']
    end

    def run
      puts "Starting server".bold
      cmd = ['./']
      cmd << File.join(@config['steamdir'], @config['armadir'])
      cmd << "-port=#{@server['port']}"
      cmd << "-pid=tmp/arma3server_#{@server['port']}.pid"
      cmd << "-profiles=profiles"
      cmd << "-name=#{config['environment']}"
      cmd << '-nosplash' # not sure if needed
      cmd << "-config=#{cfgfile}"

      Rarma.logger.debug cmd.inspect
      exit 1
      Open3.popen3(cmd.join(' ')) do |stdin, stdout, stderr, wait_thr|

      end
    end
  end
end
