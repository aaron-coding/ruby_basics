piles = [[3,2,1],[],[]]
winning_pile = [3,2,1]

def move(piles)
  puts "Performing a move"
  p piles
  puts "please enter source pile"
  from_pile = gets.to_i
  puts "please enter a target pile"
  to_pile = gets.to_i 
  if piles[from_pile-1].empty?
    p "error"    
  elsif piles[to_pile-1].empty? ||
    (piles[(to_pile-1)].last > piles[(from_pile-1)].last) 
    piles[to_pile-1] << piles[from_pile-1].pop 
  else
    p 'invalid move'
  end
end


until piles[1] == [3,2,1] || piles[2] == [3,2,1]
  move(piles)
end 
p piles
puts "You rock! You won"