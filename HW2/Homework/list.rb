prompt = 0


while prompt != 5 do
  puts "Welcome to a to-do list"
  puts "1) Print list"
  puts "2) Add item to list"
  puts "3) Delete item from list"
  puts "4) Replace item on the list"
  puts "5) Exit"
  list = Array["Add item to list",
               "Delete item from list",
               "Replace item from list"]
  prompt = gets.to_i

  case gets.chomp
    when "1"
      puts list
    when "2"
      puts "What would you like to add?"
  end

end

  puts "Good bye!"
end
