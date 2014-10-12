def num_to_s(num, base)
  result = []
  pow = 0
  
  hex_keys = { 10 => "A", 11 => "B", 12 => "C", 13 => "D", 14 => "E", 
    15 => "F"
    
  }
  
  until (num / (base ** pow) == 0)
     result.unshift( (num / (base ** pow) ) % base )
     pow += 1
  end
  
  result = result.map do |digit|
    if hex_keys.include?(digit)
      hex_keys[digit]
    else
      digit
    end
  end
  result.join
end 

p num_to_s(234,16)