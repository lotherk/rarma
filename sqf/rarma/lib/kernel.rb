#
# Rarma SQF Kernel Functions
#
#

module Rarma::Kernel
  __native
  def self.init
    <<-SQF
    _succ = ("Arma2Net.Unmanaged" callExtension "PY import rarma");
    if(_succ == "") then {
        LOGGER("Loaded Ruby from Python successfully")
    } else {
        LOGGER_FATAL("Couldn't load Ruby from Python."); 
        LOGGER_FATAL("Output:\\n" + _succ);
        LOGGER_FATAL("End of output.");
    };
    SQF
  end
end
