# class that measures performance of a given command
# in ms using diag_tickTime

module Rarma::Performance
  __native
  def self.check _code, _log = true, _cycles = 10000
    <<-SQF
    _start = diag_tickTime

    for "_i" from 1 to _cycles do {
      call compile _code;
    }

    _stop = diag_tickTime;
    _time = _stop - _start;

    if(_log) then {
      LOGGER_DEBUG(format ["%1 cycles of %2 needed %3 ms to run.", _cycles, _code, _time]);
    };

    _time
    SQF
  end
end

=begin
def run
  start = SQF.diag_tickTime
  for i in 0..@cycles do
    SQF.call.compile @code
  end
  stop = SQF.diag_tickTime
  time = stop - start
  if @log
    Logger.debug(SQF.format "%1 cycles of %2 needed %3 ms to run.", @cycles, @code, time)
  end
  return time
end
=end
