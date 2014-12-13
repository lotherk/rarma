require 'rake'
require 'rarma'
desc "Builds scripts"
task :build do
  puts ">> Creating build structure"
  mkdir_p("build")
  Dir[File.join('lib', '**', '*')].each do |file|
    next unless File.directory?file
    mkdir_p(File.join('build', file))
  end
  Dir[File.join('lib', '**', '*')].each do |file|
    next if File.directory?file
    if file=~/\.rb$/
      sh "rarma compile -o build #{file}"
    else
      cp(file, File.join('build', file))
    end
  end

  Dir['*'].each do |file|
    next if File.directory?file
    next if['Rakefile'].include?file
    if file=~/\.rb$/
      sh "rarma compile -o build #{file}"
    else
      cp(file, 'build')
    end
  end

  macro_dir = File.join(Rarma.gem_root, 'share', 'macros')
  cp_r(macro_dir, 'build')
  Dir[File.join('build', '**', '*')].each do |dir|
    next unless File.directory?dir
    next if dir=~/macros/
    cp_r(macro_dir, dir)
  end
  cp_r(File.join(Rarma.gem_root, 'share', 'rarmalib'), 'build')
end

desc "Cleans up project folder"
task :clean do
  rm_rf("build")
end

desc "Creates .pbo file (needs cpbo in \$PATH)"
task :package do

end


task :prepare do
end
desc "Builds whole mission."
task :default => [:prepare, :build, :package] do
  puts "Mission successfully built."
end
