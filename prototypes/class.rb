begin
  putz "Yo Moma is so fat"
  if Mommy.is_fat?
    puts "Woah"
  else
    puts "Phew!!"
  end

rescue IO::Exception => e

rescue Exception => e
  Rarma.logger.error "Exception caught."
  Rarma.logger.error { "Exception caught" }
retry
  Rarma.logger.error "Retrying"
end
