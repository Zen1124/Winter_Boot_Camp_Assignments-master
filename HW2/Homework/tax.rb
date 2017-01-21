prompt = ">"

def merch()
  name_merch = gets.chomp
  prompt = ">"
  puts "How much is it?"
  puts prompt
  cost = gets.to_i
  puts "Quantity?"
  puts prompt
  quantity = gets.to_i
  subtotal = cost * quantity
  tax = subtotal * 8.875 / 100
  total = subtotal + tax
  hours = total / 7.7
  puts "You will need to work for atleast #{hours.ceil} hour(s)"
end

def food()
  name_food = gets.chomp
  prompt = ">"
  puts "How much is it?"
  puts prompt
  cost = gets.to_i
  puts "Quantity?"
  puts prompt
  quantity = gets.to_i
  puts "How much do you want to tip?"
  puts prompt
  tip = gets.to_i
  subtotal = cost * quantity
  tax = subtotal * 8.875 / 100
  tip = subtotal * (tip / 100) / 100
  total = subtotal + tax + tip
  hours = total / 7.7
  puts "You will need to work for atleast #{hours.ceil} hour(s)"
end

def food_or_merch()
  prompt = ">"
  case gets.chomp
    when "Food","food"
      puts "What food do you want?"
      puts prompt
      food()
    when "Merchandise", "merchandise"
      puts "What merchandise do you want?"
      puts prompt
      merch()
    else
      puts "I didnt get that"
    end
end

puts "What will you be buying today? Food or merchandise?"
puts prompt
food_or_merch()
