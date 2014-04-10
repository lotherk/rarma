def rarma_benchmark _iterations=10000
  _counter = 0
  _arrays = []
  _start = time
  while _counter < _iterations do
    _array = [1,2,3,4,5,6,7,8,9,10]
    _arrays << _array
    _counter += 1
  end
  _end = time
  hint "#{_iterations} array with 10 elements took #{_end - _start} seconds"
end

t = Thread.new { |_thread|
  rarma_benchmark 5000

  while true or _thread.terminate 
    hint "#{_thread.to_s} running..."
    sleep 0.5
  end
}

sleep 10
t.terminate!
t.destroy

unless true
  hint "foo"
end

testh = {}
testh["foo"] = {}
testh["foo"]["bar"] = false
hint testh["foo"]["bar"]
