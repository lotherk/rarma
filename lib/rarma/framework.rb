module Rarma::Framework

end
gem_root = Gem::Specification.find_by_name("rarma").gem_dir
Dir["#{gem_root}/lib/rarma/framework/**/*.rb"].sort.each do |f|
  require f
end
