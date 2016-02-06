player_win = 0
computer_win = 0

while (player_win || computer_win) < 2
  puts "Player Score: #{player_win}, Computer Score: #{computer_win}"
  print "Choose rock(r), paper(p), scissor(s): "
  player_choice = gets.chomp
  player_choice = player_choice.downcase
  computer_choice = rand(1..3)


  if player_choice == "r"
      player_choice = "rock"
  elsif player_choice == "p"
  	  player_choice = "paper"
  elsif player_choice == "s"
  	  player_choice = "scissors"
  else
      # player_choice = "Invalid choice, try again."
      player_choice = nil
      puts "Invalid choice, try again"
  end

  if !player_choice.nil?
    if computer_choice == 1
    	  computer_choice = "rock"
    elsif computer_choice == 2
    	  computer_choice = "paper"
    else
    	  computer_choice = "scissors"
    end

    player_choices = "Player chose #{player_choice}."
    computer_choices = "Computer chose #{computer_choice}."

    if player_choice == computer_choice
        puts player_choices
        puts computer_choices
        puts "The result is a tie!"
        puts ""
    elsif player_choice == "rock" && computer_choice == "scissors"
        puts player_choices
        puts computer_choices
        puts "Rock beats scissors, player wins!"
        puts ""
        player_win += 1
        computer_win += 0
    elsif player_choice == "rock" && computer_choice == "paper"
        puts player_choices
        puts computer_choices
        puts "Paper beats rock, computer wins!"
        puts ""
        computer_win += 1
        player_win += 0
    elsif player_choice == "paper" && computer_choice == "rock"
        puts player_choices
        puts computer_choices
        puts "Paper beats rock, player wins!"
        puts ""
        player_win += 1
        computer_win += 0
    elsif player_choice == "paper" && computer_choice == "scissors"
        puts player_choices
        puts computer_choices
        puts "Scissors beat paper, computer wins!"
        puts ""
        computer_win += 1
        player_win += 0
    elsif player_choice == "scissors" && computer_choice == "rock"
        puts player_choices
        puts computer_choices
        puts "Rock beats scissors, computer wins!"
        puts ""
        computer_win += 1
        player += 0
    elsif player_choice == "scissors" && computer_choice == "paper"
        puts player_choices
        puts computer_choices
        puts "Scissors beat paper, player wins!"
        puts ""
        player_win += 1
        computer_win += 0
    else
      puts player_choice
    end
  end
end

if computer_win > player_win
  puts "Computer wins!"
else
  puts "Player wins!"
end
