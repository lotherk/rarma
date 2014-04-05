
class Rarma::Client
  attr_reader :ref

  __native
  def initialize
    <<-SQF
    _str = ("Py from rarma.client import Client");
    ("Arma2Net.Unmanaged" callExtension _str);
    if(isNil "rarma_client_ref_index") then { rarma_client_ref_index = 0 };
    _varname = format["client_ref_%1", rarma_client_ref_index];
    _str = format["PY %1 = Client(); print %1;", _varname];
    _res = ("Arma2Net.Unmanaged" callExtension _str);
    MEMBER("@ref", _varname);
    rarma_client_ref_index = rarma_client_ref_index + 1;
    SQF
  end

  __native
  def connect _hostname="127.0.0.1", _port=31337
    <<-SQF
    _ref = MEMBER("@ref", nil)
    _result = ("Arma2Net.Unmanaged" callExtension format["Py %1.connect(""%2"", %3)", _ref, _hostname, _port]);
    SQF
  end

  __native
  def send _message
    <<-SQF
    _ref = MEMBER("@ref",nil);
    _tid = ("Arma2Net.Unmanaged" callExtension format["Py %1.get_tid()", _ref]);
    // this is.. ugly

    if(typeName _message != 'string') then {
      _message = str(_message);
    };

    _split = [_message, ""] call CBA_fnc_split;
    _length = count _split;
    _index = 0;
    _size = 448;
    _packet = [];
    _result = nil;
    {
      _packet = _packet + [_x];

      if(_index == _size or _index == (_length - 1)) then {
        _msg = [_packet, ""] call CBA_fnc_join;
        _msg = [_msg, '"', '\\"'] call CBA_fnc_replace;
        _str = format["py %1.q_append(%2, %3)", MEMBER("@ref",nil), _tid, str(_msg)];
        _res = ("Arma2Net.Unmanaged" callExtension _str);
        _index = 0;
      };
      _index = _index + 1;
    } count _split;

    _str = format["py %1.q_send(%2)", MEMBER("@ref",nil), _tid];
    _res = call compile ("Arma2Net.Unmanaged" callExtension _str);
    if(typeName _res == 'string') then {
      _res = call compile _res;
    };
    _key = _res select 0;
    _val = _res select 1;
    if(isNil "_val" exitWith {
      false;
    };
    switch(_key) do {
      case 'result': {
        if(typeName _val == 'string') then {
          _res = call compile _val;
        } else {
          _res = _val;
        };
      };
      default {
        _res = _val;
      };
    };
    _res;
    SQF
  end
end

