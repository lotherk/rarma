
class Rarma::Client
  attr_reader :ref

  __native
  def initialize
    <<-SQF
    if(isNil "rarma_client_ref_index") then { rarma_client_ref_index = 0 };
    
    _varname = format["client_ref_%1", rarma_client_ref_index];

    RARMA_PY(format["%1 = Client()"]);

    MEMBER("@ref", _varname);
    rarma_client_ref_index = rarma_client_ref_index + 1;
    SQF
  end

  __native
  def connect _hostname="127.0.0.1", _port=31337
    <<-SQF
    _result = RARMA_PY(format["%1.connect(%2, %3)", RGVAR("@ref"), _hostname, _port]);
    SQF
  end

  __native
  def send _message
    <<-SQF
    _tid = RARMA_PY("%1.get_tid");

    // this is.. ugly
    _split = [_message, ""] call CBA_fnc_split;
    _index = 0;
    _size = 786;
    _packet = [];
    _results = [];
    {
      if(_index == _size) then {
        _msg = [_packet, ""] call CBA_fnc_join;
        _result = RARMA_PY(format["%1.send(%2, %3)", RGVAR("@ref"), _tid, _msg])
        _results = _results + [_result];
        _packet = [];
        _index = 0;
      } else {
        _packet = _packet + [_x];
      };
      _index = _index + 1;
    } count _split;
    _results;
    SQF
  end
end
