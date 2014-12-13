module Rarmalib::Logger
  __native
  def log _message, _args, _lineno, _file, _level="INFO"
    <<-SQF
    private "_scriptName";
    // strip mission path from _file
    _scriptName = if (isnil "_fnc_scriptName") then {
      "-"
    } else {
      _fnc_scriptName
    };

    _format = format["%1: %2|%3|%4 %5:%6 %7 %8", _level, time, diag_frameno, diag_fps, _file, _lineno, _scriptName, _message];
    diag_log (text _format);
    SQF
  end

  def debug _message, _args, _lineno, _file
    log(_message, _args, _lineno, _file, "DEBUG")
  end
  def error _message, _args, _lineno, _file
    log(_message, _args, _lineno, _file, "ERROR")
  end
  def info _message, _args, _lineno, _file
    log(_message, _args, _lineno, _file, "INFO")
  end
  def warn _message, _args, _lineno, _file
    log(_message, _args, _lineno, _file, "WARN")
  end
end
