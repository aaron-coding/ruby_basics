# Classic Rock Paper Scissors
# What you want to choose must be passed in on method call.

def rps(user_choice)
  
  pos_choices = ["Rock", "Paper", "Scissors"]
  
  
  comp_choice = pos_choices[rand((0..2))]

  if user_choice == comp_choice
    return "#{comp_choice}, Draw"
  end
  case user_choice
    when "Rock"
      if comp_choice == "Paper"
        return "#{comp_choice}, Lose"
      elsif comp_choice == "Scissors"
        return "#{comp_choice}, Win"
      end
    when "Paper"
      if comp_choice == "Rock"
        return "#{comp_choice}, Win"
      else
        return "#{comp_choice}, Lose"
      end
    when "Scissors"
      if comp_choice == "Rock"
        return "#{comp_choice}, Lose"
      else
        return "#{comp_choice}, Win"
      end
  end
end


p rps("Rock")