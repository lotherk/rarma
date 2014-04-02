module SQF; end
# auto require all files
gem_root = Gem::Specification.find_by_name("rarma").gem_dir
Dir["#{gem_root}/lib/sqf/**/*.rb"].each do |f|
  require f
end
