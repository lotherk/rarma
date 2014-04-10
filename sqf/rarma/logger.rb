module Rarma::Logger
  __native
  def self.log _message, _lineno, _file, _level="info"
    <<-SQF
    // strip mission path from _file

    _format = format["%1|%2|%3 %4:%5 %6", time, diag_frameno, diag_fps, _file, _lineno, _message];
    diag_log _format;
    SQF
  end
end
