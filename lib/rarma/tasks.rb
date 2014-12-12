require 'rake'
require 'rarma'
desc "Builds scripts"
task :build do
  mkdir_p("build")
  puts ">> Transompiling mission lib/ folder"
  Dir[File.join('lib', '**', '*.rb')].each do |file|
    sh "rarma compile -o build #{file}"
  end

  puts ">> Transompiling mission folder"
  Dir['*.rb'].each do |file|
    sh "rarma compile -o build #{file}"
  end

  puts ">> Copying macros into build directory"
  cp_r('macros', 'build')
  Dir[File.join('build', '**', '*')].each do |dir|
    next unless File.directory?dir
    next if dir=~/macros/
    cp_r('macros', dir)
  end
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
