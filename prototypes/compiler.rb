require 'rarma'
require 'rarma/sqf'
require 'rarma/sqf/class'
require 'rarma/sqf/compiler'
Rarma.logger.level = Logger::ERROR

ARGV.each do |f|
  script = Rarma::SQF::Compiler.compile(f)
  puts script
end
