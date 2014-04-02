require "rarma"
require "rarma/sqf"
require "rarma/sqf/script"
#Rarma.logger.level = Logger::DEBUG
module VIK; end
class VIK::Logger < Rarma::SQF::Script

  def initialize
    @progname = "noname"
  end

  def self.log (_message, _name, _line, _level)
    <<-EOS
    _line = _line + 1;
    _format = format["%6 - %5|%4 %1:%2 %3", _name, _line, str(_message), diag_frameno, time, _level];
    diag_log _format;

    if(hasInterface) then {
      player globalChat str(_format);
    };
    EOS
  end

  def info _message
    <<-EOS
         MEMBER("message", _message);
    EOS
  end
  def debug _message
    <<-EOS
         MEMBER("message", _message);
    EOS
  end

  private
  def message _message
    <<-EOS
         private ["_progname"];
         _progname = MEMBER("progname",nil);
         [_message, _progname] call VIK_Logger_log;
    EOS
  end
end

puts VIK::Logger.new.to_sqf
