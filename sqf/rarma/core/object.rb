class Rarma::Object
  __native :respond_to?
  def respond_to? _m
    <<-SQF
    if (! isNil format["%1", _m]) then {
      true
    } else {
      false
    };
    SQF
  end

  __native :to_s
  def to_s
    <<-SQF
    format["%1", _className];
    SQF
  end

end
