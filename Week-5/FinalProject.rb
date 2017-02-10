require 'io/console'

name = nil
inventory = Array.new

def pressAnyKey
  print "Press Any Key"
  STDIN.getch
  print "            \r"
end

def scene2
  dead = 0
  while dead < 3
    case gets.chomp
      when "exit", "leave", "go", "elevator", "outside", "escape"
        puts "You and another survivor run to the elevator..."
        sleep(1)
        pressAnyKey
      when "fight", "hit", "tackle", "attack"
        puts "You charge at one of the shooters..."
        sleep(1)
        pressAnyKey
        puts "He falls to the ground and drops his gun..."
        sleep(1)
        sceneAttack1
      else
        puts "Theres no time for typing things I can't understand!!!"
        sleep(1)
        puts "Will you escape or fight?"
        dead = dead + 1
    end
  end
  puts "You stand there still as a rock...Oh look here comes one of the shooters.."
  sleep(2)
  pressAnyKey
  puts "*kachunk* You're dead"
  sleep(2)
  print "Press Any Key to Stop, Wait for 5 seconds to restart"
  STDIN.getch
  print "            \r"
  sleep(5)
  if defined? STDIN.getch

  else
    puts "Restarting...."
    sleep(1)
    wakeUp
  end
end

def sceneAttack1
  print ">  "
  STDIN.getch
  print "            \r"
  case gets.chomp
  when "get gun", "gun", "take"
    puts "You get off the fallen man and get his gun..."
    sleep(0.5)
    puts "*A shotgun has been added to your inventory* You are holding it right now!"
    sleep(1)
    pressAnyKey
    puts ""
  when "fight", "keep fighting", "hold him down"
    puts "You stay on top of the man while his friends start to notice..."
    sleep(1)
    pressAnyKey
    puts "Your dead..."
    sleep(1)
    print "Press Any Key to Stop, Wait for 5 seconds to restart"
    STDIN.getch
    print "            \r"
    sleep(5)
    if defined? STDIN.getch

    else
      puts "Restarting...."
      sleep(1)
      wakeUp
    end
  end
end
def look
  puts "You step out of the capsule"
  sleep(1)
  pressAnyKey
  scene_1 = 1
  puts "All around you are other people that you have never met before..."
  while scene_1 == 1 do
    sleep(1)
    pressAnyKey
    puts "What will you do?"
    case gets.chomp
      when "Speak", "speak", "talk", "Talk", "ask", "Ask", "Speak to them", "speak to them"
        puts "You go up to one of your fellow survivors..."
        sleep(1)
        pressAnyKey
        puts "Other Guy: What do you want?"
        sleep(1.5)
        pressAnyKey
        puts "You: I want to know what I'm doing here???"
        sleep(1)
        pressAnyKey
        puts "Other Guy: I think we were forced into this bunker..."
        sleep(1)
        pressAnyKey
        puts "Other Guy: I have a bad feeling that we're not safe here.."
        sleep(1)
        pressAnyKey
        puts "Your conversation is cut short by a unexpected explosion..."
        sleep(1)
        pressAnyKey
        puts "5 armed men appear.."
        sleep(1)
        pressAnyKey
        puts "*bang* *bang* *bang*"
        sleep(1)
        pressAnyKey
        puts "They start shooting into the crowd..."
        sleep(1.2)
        pressAnyKey
        puts "The man you were talking to gets shot"
        sleep(1)
        pressAnyKey
        puts "Will you escape or fight?"
        print ">"
        STDIN.getch
        print "            \r"
        scene_1 = 0
    else
      puts "Maybe you should try to get information from them..."
    end
  end
  scene2
end

def wakeUp
  puts "Welcome to your new home!"
  sleep(0.7)
  pressAnyKey
  puts "You just woke up to one of our safe bunkers!"
  sleep(1)
  pressAnyKey
  puts "On behalf of vault-tec, we hope you have a peaceful stay."
  sleep(1)
  pressAnyKey
  puts "Nine out of ten survivors say"
  puts "that this is the best place to spend the nuclear apocalyse!"
  sleep(1)
  pressAnyKey
  puts "Hey I didn't catch your name, what is it?"
  sleep(0.7)
  print "Type your name:"
  STDIN.getch
  print "            \r"
  name = gets.chomp.to_s
  puts "Hi #{name}"
  sleep(1.4)
  pressAnyKey
  puts "Enjoy your stay here!"
  sleep(0.9)
  pressAnyKey
  puts "The rusty robot leaves your capsule.."
  sleep(0.5)
  look
end


wakeUp
