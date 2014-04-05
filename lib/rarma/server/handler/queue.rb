module Rarma::Server::Handler::Queue
  def process_queue json
    meth = json['method'].to_sym
    queue = Rarma::Queue.get(@client)
    queue.respond_to?meth
    Rarma.logger.debug "calling method #{meth}"
    queue.send(meth, json)
  end
end
