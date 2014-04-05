module Rarma::Server::Handler::Queue
  def process_queue json
    meth = json['method'].to_sym
    queue = Rarma::Queue.get(@client)
    queue.respond_to?meth
    Rarma.logger.debug "calling method #{meth}"
    res = queue.send(meth, json).to_s
    { :result => res }
  end
end
