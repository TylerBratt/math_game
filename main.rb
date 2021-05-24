require './player'
require './random_number'

$p1 = Player.new("Thrillhouse")
$p2 = Player.new("Hans")
$num1 = Number.new
$num2 = Number.new

def question
  puts "#{$p1.name}: What does #{$num1.number} plus #{$num2.number} equal"
  print "> "
  answer = $stdin.gets.chomp.to_i
  
  if (!check_answer(answer))
    $p1.life -= 1
  end
  
  next_turn($p1)
end
  
def player_lives(current_player)
  current_player.name == $p1.name ? $p1.life == current_player.life : $p2.life = current_player.life
end

def change_player(current_player)
  current_player.name == $p1.name ? $p2 : $p1
end

def check_answer(answer)
  puts""
  print "    "
  puts (answer == $num1.number + $num2.number) ? "#{answer} Noice!" : "Nope! it's #{$num1.number + $num2.number}..."
  puts""
  answer == $num1.number + $num2.number
end

def next_turn(current_player)
  if(current_player.life == 0)
    current_player = change_player(current_player)
    puts "#{current_player.name} WINS with #{current_player.life} points!"
    puts "--------- Game Over! ---------"
    exit(0)
  else
    puts " ------------ Score ------------- "
    puts ""
    print "   "
    puts "#{$p1.name}: #{$p1.life}/3 vs #{$p2.name}: #{$p2.life}/3"
    puts ""

    current_player = change_player(current_player)
    puts ""
    puts "-------- Next Turn! ---------"
    puts ""

    
  end

  
  
  puts "#{current_player.name}: What does #{$num1.roll} plus #{$num2.roll} equal"
  print "> "
  answer = $stdin.gets.chomp.to_i
  
  if(!check_answer(answer))
    current_player.life -= 1
  end
  
  next_turn(current_player)
end

question
