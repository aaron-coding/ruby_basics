def double_array(array)
  array = array.map { |element| element * 2 }
end




class Array
  
  def my_each #my own monkey-patched method for .each
    result_array = []
    i = 0
    until i == self.size
      yield self[i] if block_given?
      i += 1
    end
    self
  end
  
end



def median_array(array)  
  array.sort!
  unless (array.size % 2 == 0)
    array[array.size / 2]
  else
    (array[array.size / 2] + (array[(array.size / 2) - 1])) / 2 
  end   
end

p median_array([1,2,4,7])

def cat_string(str_array) #concatenates a string 
  str_array.inject do |accum, str|
    accum += str
  end
end

p cat_string(["hello ","there ", "buddy"])