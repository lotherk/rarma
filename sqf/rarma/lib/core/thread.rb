class Rarma::Thread < Rarma::Object
  attr_reader :ref, :terminate

  __native
  def initialize _code
    <<-SQF
    _ref = [_class] spawn _code;
    MEMBER("@ref", _ref);
    MEMBER("@terminate", false);
   SQF
  end

  __native
  def running?
    <<-SQF
    !scriptDone FUNC_GETVAR("@ref")
    SQF
  end

#  __on_destroy
  def terminate!
    terminate @ref
  end
end
