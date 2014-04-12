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

=begin
  def self.measure
    _start = diag_tickTime
    while _i < @cycles do
      call compile @code
      _i += 1
    end
    _stop = diag_tickTime
    _time = _stop - _start
    if @log
      _msg = format ["%1 cycles of %2 needed %3 ms to run.", @cycles, @code, _time]
      LOGGER(_msg)
    end
    _time
  end
=end

end
