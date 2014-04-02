module Rarma::Server::Handler::Queue
  def process_queue line
    Rarma.logger.debug "Processing queue command #{line}"
  end
end
