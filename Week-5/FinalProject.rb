require 'io/console'

name = nil
inventory = Array.new
dead = 0

def press_any_key
  print "Press Any Key"
  STDIN.getch
  print "            \r"
end

def check(func, say, time, say2, time2)
  if dead == 3
    puts "#{say}"
    sleep(time)
    press_any_key
    puts "#{say2}"
    sleep(time2)
    press_any_key
    wake_up
  else
    func
  end
end

def scene_2
  case gets.chomp
    when "exit", "leave", "go", "elevator", "outside", "escape"
      puts "You and another survivor run to the elevator..."
      sleep(1)
      press_any_key
    when "fight", "hit", "tackle", "attack"
      puts "You charge at one of the shooters..."
    else
      puts "Theres no time for typing things I can't understand!!!"
      dead = dead + 1
      check(scene_2, "You stand there still as a rock...Oh look here comes one of the shooters..", 2, "*kachunk* You're dead", 2)
  end

end

def look
  puts "You step out of the capsule"
  sleep(1)
  press_any_key
  scene_1 = 1
  puts "All around you are other people that you have never met before..."
  while scene_1 == 1 do
    sleep(1)
    press_any_key
    puts "What will you do?"
    case gets.chomp
      when "Speak", "speak", "talk", "Talk", "ask", "Ask", "Speak to them", "speak to them"
        puts "You go up to one of your fellow survivors..."
        sleep(1)
        press_any_key
        puts "Other Guy: What do you want?"
        sleep(1.5)
        press_any_key
        puts "You: I want to know what I'm doing here???"
        sleep(1)
        press_any_key
        puts "Other Guy: I think we were forced into this bunker..."
        sleep(1)
        press_any_key
        puts "Other Guy: I have a bad feeling that we're not safe here.."
        sleep(1)
        press_any_key
        puts "Your conversation is cut short by a unexpected explosion..."
        sleep(1)
        press_any_key
        puts "5 armed men appear.."
        sleep(1)
        press_any_key
        puts "*bang* *bang* *bang*"
        sleep(1)
        press_any_key
        puts "They start shooting into the crowd..."
        sleep(1.2)
        press_any_key
        puts "The man you were talking to gets shot"
        sleep(1)
        press_any_key
        puts "Will you escape or fight?"
        print ">"
        STDIN.getch
        print "            \r"
        scene_1 = 0
    else
      puts "Maybe you should try to get information from them..."
    end
  end
  scene_2
end

def wake_up
  puts "Welcome to your new home!"
  sleep(0.7)
  press_any_key
  puts "You just woke up to one of our safe bunkers!"
  sleep(1)
  press_any_key
  puts "You probably don't remember coming here but you should be happy here!"
  sleep(1)
  press_any_key
  puts "Nine out of ten survivors say"
  puts "that this is the best place to spend the nuclear apocalyse!"
  sleep(1)
  press_any_key
  puts "Hey I didn't catch your name, what is it?"
  print "Type your name:"
  STDIN.getch
  print "            \r"
  name = gets.chomp.to_s
  puts "Hi #{name}"
  sleep(1)
  press_any_key
  puts "Enjoy your stay here!"
  press_any_key
  look
end


wake_up
