def caesar_cipher(str, shift)
  str.downcase.split("").map do |c| #Will force return value to be downcase
    if c.ord+shift < 122
      (c.ord+shift).chr
    else
      (c.ord+shift-26).chr
    end   
  end.join
  
end

p caesar_cipher("zello", 3)