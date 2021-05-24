# Make a command line math game

- 2 players each start with 3 lives.
- a life is lost when question answered is incorrect.
- game is over when one player runs out of lives.
- game should announce who is winner
- 2 random numbers generated from 1 to 20.

Nouns:
num1, num2, answer
player_1(P1), player_2(P2), current_player

Classes:
- main -> where the game will run (I/O)
- Player -> initialize Player and lives
- Number -> generate random number


Methods:
  Number -> initialize -> generate random number
  Number -> roll -> generate second random number
  
  question -> ask the first question
  check_answer -> check to see if answer is correct
  player_lives -> update player lives if needed
  change_player -> change to player 2
  next_turn -> start next players turn
