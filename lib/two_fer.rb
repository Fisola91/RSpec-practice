def two_fer
  name = gets.chomp
  if name.empty?
    puts "One for #{name}, one for me"
  else
    puts "One for you, one for me"
  end
end
