# Works some of the time, currently gets bugged when it has no option
# if it makes "gin" & "coke" and "rum" and "tonic"; it has nothing to pair
# scotch with and so it errors.

def remix(ingredient_pairs)
  new_drink = []
  alcohol_col = []
  ingredient_col = []
  new_pairs = []

  (0...ingredient_pairs.count).to_a.shuffle.each do |alcohol_index|
    alcohol_col << ingredient_pairs[alcohol_index][0]
  end
  
  new_drink[0] = [alcohol_col[0]]
  new_drink[1] = [alcohol_col[1]]
  new_drink[2] = [alcohol_col[2]]

 (0...ingredient_pairs.count).to_a.each do |ingredient_index|
    ingredient_col << ingredient_pairs[ingredient_index][1]
  end
  
  i = 0
  until ingredient_col.nil? || ingredient_col.empty?

    unless ingredient_pairs.include?([new_drink[i][0], ingredient_col.last])

      new_drink[i] << ingredient_col.pop
    end
    ingredient_col.shuffle
    i += 1
    
  end
 
  new_drink

end

p remix([
  ["rum", "coke"],
  ["gin", "tonic"],
  ["scotch", "soda"]
])
