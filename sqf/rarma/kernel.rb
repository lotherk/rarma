#
# Rarma SQF Kernel Functions
#
#

module Rarma::Kernel
  __native
  def initialize
    <<-SQF
    LOGGER_DEBUG("Loading Ruby from Python");
    LOGGER_DEBUG(("Arma2Net.Unmanaged" callExtension "PY import rarma"));
    LOGGER_DEBUG(("Arma2Net.Unmanaged" callEXtension "PY rarma.ruby('1+1')"));
    
    SQF
  end
end
