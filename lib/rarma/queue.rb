class Rarma::Queue
  attr_reader :queue
  def self.get(qid)
    @queues ||= {}
    @queues[qid] ||= self.new
  end

  def initialize
    Rarma.logger.debug "Initializing queue #{self}"
    #@queue = []
    @queue = ["hint 'this is a test!'"]
    @tid = -1;
  end

  def next? json
    Rarma.logger.debug "queue has next?"
    if @queue.count > 0 
        @tid += 1
        return @tid
    else
       return false 
    end
  end

  def shift json
    Rarma.logger.debug "shift from queue"
    @queue.shift
  end
  def pop json
    Rarma.logger.debug "pop from queue"
    ret = @queue.first
    @queue = @queue.drop(@queue.first)
    ret
  end

end
