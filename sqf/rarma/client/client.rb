class Rarma::Client

  __native
  def initialize
    <<-SQF
    ("Arma2Net.Unmanaged" callExtension "Py import rarma.client")
    SQF
  end

  __native
  def connect _hostname="127.0.0.1", _port=31337
    <<-SQF
    ("Arma2Net.Unmanaged" callExtension format["Py rarma.client.connect(""%1"", %2)", _hostname, _port])
    SQF
  end

  __native
  def send _message
    <<-SQF
    // split message in parts, tid stuff etc...
    // aquire tid ...
    ("Arma2Net.Unmanaged" callExtension format["Py rarma.client.send(""QUEUE %1 %2"")", _tid, _message])
    SQF
  end
end
