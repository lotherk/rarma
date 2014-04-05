
def RarmaClient _message
  if client.nil?
    client = Rarma::Client.new
    client.connect
  end
  client.send _message
end
class Rarma::Client
  attr_reader :ref

  __native
  def initialize
    <<-SQF
    RARMA_PY("from rarma.client import Client")

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
    _result = RARMA_PY(format["%1.connect(%2, %3)", RCVAR("ref"), _hostname, _port]);
    SQF
  end

  __native
  def send _message
    <<-SQF
    _tid = RARMA_PY(format["%1.get_tid()", RCVAR("ref")]);
    
    // this is.. ugly
    _split = [_message, ""] call CBA_fnc_split;
    _index = 0;
    _size = 448;
    _packet = [];
    _result = nil;

    {
      if(_index == _size) then {
        _msg = [_packet, ""] call CBA_fnc_join;
        RARMA_PY(format["%1.q_append(%2, ""%3"")", RCVAR("ref"), _tid, _msg]);
        _index = 0;
      } else {
        _packet = _packet + [_x];
      };
      _index = _index + 1;
    } count _split;

    RARMA_PY(format["%1.q_send(%2)", RCVAR("ref"), _tid]);
    SQF
  end
end
