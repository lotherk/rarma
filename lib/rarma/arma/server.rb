module Rarma::Arma
  class Server
    attr_reader :config
    def initialize
    end

    def initialize config
      @config = config
    end
  end
end
