__native
def quexecutor_exec _code
  <<-SQF
  private ["_result"];
  _result = nil;
  try {
    _result = call _code;
  } catch {
    diag_log str(_exception);
    _result = false
  };
  _result;
  SQF
end
class Quexecutor
  attr_reader :client, :ref

  def initialize _client
    @client = _client
  end

  __native
  def start _client
    <<-SQF
      private ["_chvar", "_fetch", "_rson", "_queue", "_script"];
      _chvar = format["quexecutor_thread"];
      if(!isNil _chvar) exitWith {};
      call compile format["%1 = true;", _chvar];

      _fetch = false;
      waitUntil {
        _id = nil;
        waitUntil {
          sleep 0.5;
          try {
            diag_log "checking for new input";
            _rson = format["[['module', 'queue'], ['method', 'next?']]"];
            _id = call compile (["send", _rson] call _client);
            if(isNil "_id") then { false } else { true }
          } catch {
            diag_log _exception;
          };
        };
        _fetch = true;
        _queue = []
        while { _fetch } do {
          diag_log "fetching from queue";
          try {
            _rson = format["[['module', 'queue'], ['method', 'pop'], ['id', %1]]", _id];
            _res = (["send", _rson] call _client);
            if(isNil "_res") exitWith { _fetch = false };
            _queue = _queue + [_res];
          } catch {
            diag_log _exception;
          };
          sleep 0.05;
        };
        _script = [_queue, ""] call CBA_fnc_join;
        _sref = _script spawn quexecutor_exec;
        false // run "forever"
      };
    SQF
  end

  __native
  def execute _code
    <<-SQF
    
    SQF
  end
end
