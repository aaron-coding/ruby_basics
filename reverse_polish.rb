#!/usr/bin/env ruby

# This reverse polish calculator is near perfect.
# It only has one flaw... it requires someone know
# Revsere Polish Notation to use it!

def rpn_calculator
  operators_list = ['+','-','*','/']
  stack = []
  
  def add(stack)
    stack.push(stack.pop + stack.pop)
  end
  
  def minus(stack)
    var1, var2 = stack.pop, stack.pop
    stack.push(var2 - var1)
  end
  
  def multiply(stack)
    stack.push(stack.pop * stack.pop)
  end
  
  def divide(stack)
    stack.push(stack.pop / stack.pop)
  end
  
  def get_user_input
    puts "enter number or operator into calculator"

    gets.chomp
  end
  
  puts "enter 'quit' to quit"
  loop do
    user_choice = get_user_input
    break if user_choice == "quit"
  
    if !(operators_list.include?(user_choice))
      stack << user_choice.to_i
    end
  
    case (user_choice)
    when "+"
      add(stack)
    when "-"
      minus(stack)
    when "*"
      multiply(stack)
    when "/"
      divide(stack)
    end 
    
    
    p stack
  end 
end


if __FILE__ == $PROGRAM_NAME
  rpn_calculator()
end


