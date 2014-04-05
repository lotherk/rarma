class Rarma::Queue
  attr_reader :queue
  def self.get(qid)
    @queues ||= {}
    @queues[qid] ||= self.new
  end

  def initialize
    @queue = []
  end

  def next?
    Rarma.logger.debug "queue has next?"
    @queue.count > 0
  end

  def shift
    Rarma.logger.debug "shift from queue"
  end
  def pop
    Rarma.logger.debug "pop from queue"
  end

end
