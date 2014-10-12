# Play a guessing game with the computer 
def num_guessing_game
  
  def make_computer_number
    rand(1..100)
  end
  
  def get_guess
    puts "What is your guess, master?"
    gets.chomp.to_i 
  end  
  
  comp_num = make_computer_number()
  num_guesses = 0
  loop do
    user_guess = get_guess()
    num_guesses += 1
    if user_guess > comp_num
      puts "Too High, hahah!"
    elsif user_guess < comp_num
      puts "Too Low, booooooo!! :-P"
    else 
      puts "OOOHHHH NOOOOOOO!!!!!! I LOOOOOOSEEEEE!"
      break  
    end
    puts "You've had #{num_guesses} guesses so far."      
  end
  
end

num_guessing_game()