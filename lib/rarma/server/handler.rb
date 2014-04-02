class Rarma::Server::Handler
  Dir["#{Rarma.gem_root}/lib/rarma/server/handler/*.rb"].each do |f|
   load f
 end

 Rarma::Server::Handler.constants.select do |c|
   Rarma::Server::Handler.const_get(c).instance_of? Module
 end.each do |c|
   str = "Rarma::Server::Handler::#{c}"
   include eval(str)
 end

  def initialize client
    @client = client
  end
end
