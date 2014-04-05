class Rarma::Queue
  attr_reader :queue
  def self.get(qid)
    @queues ||= {}
    @queues[qid] ||= self.new
  end

  def initialize
    Rarma.logger.debug "Initializing queue #{self}"
    @queue = ["hint 'this is a test!'"]
  end

  def next? json
    Rarma.logger.debug "queue has next?"
    @queue.count > 0
  end

  def shift json
    Rarma.logger.debug "shift from queue"
    @queue.shift
  end
  def pop json
    Rarma.logger.debug "pop from queue"
    @queue.pop
  end

end
