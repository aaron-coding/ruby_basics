# Simplest problem ever. 
# Give first number after 250 that is divisible by 7

def get_num
  i = 0
  num_found = nil
  until num_found
    num_found = i if i > 250 && i % 7 == 0
    i += 1
  end
  num_found
end

p get_num