class Rarmalib::Util::Thread
  attr_reader :ref, :terminate

  __native
  def initialize _code
    <<-SQF
    _ref = [_class] spawn _code;
    MEMBER("__ref", _ref);
    MEMBER("__terminate", false);
   SQF
  end

  __native
  def running?
    <<-SQF
    !scriptDone FUNC_GETVAR("__ref")
    SQF
  end

#  __on_destroy
  def terminate!
    terminate @ref
  end
end
