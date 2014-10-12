#Problem 1: You have array of integers. Write a recursive solution to find
#the sum of the integers.

def sum_recur(array)
  if array == []
    return 0
  end
  
  sum = array.first + sum_recur(array.drop(1))
  sum
  
end

#p sum_recur([1,2,3])
#Problem 2: You have array of integers. Write a recursive solution to
#determine whether or not the array contains a specific value.

def includes?(array, target)
  if array.first == target
    return true
  elsif array.length == 1
    return false 
  end
  
  includes?(array.drop(1), target)
end


#Problem 3: You have an unsorted array of integers. Write a recursive
#solution to count the number of occurrences of a specific value.

def num_occur(array, target)
  if array.first == target && array.length == 1
    return 1
  elsif array.first != target  && array.length == 1
    return 0
  end
  
  if array.first == target
    total = 1
  else
    total = 0
  end
  
  total + num_occur(array.drop(1), target)  
end

#Problem 4: You have array of integers. Write a recursive solution to
#determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  if array.length == 2 
    return (array[0] + array[1] == 12)
  end
  
  p array
  if array[0] + array[1] == 12 || add_to_twelve?(array.drop(1))
    return true
  else 
    return false
  end
  
    
end



#Problem 5: You have array of integers. Write a recursive solution to
#determine if the array is sorted.

def sorted?(array)
  if array.length == 0
    return []
  end
  
  if array.length == 1
    return true
  end 
  
  sorted = array[0] <= array[1]
  return false if array[0] > array[1]
  
  sorted = sorted?(array.drop(1))
  sorted 
  
end




#Problem 6: Write the code to give the value of a number after it is
#reversed. Must use recursion. (Don't use any #reverse methods!)

def reverse(number)
  if number.to_s.split("").length == 1
    return number
  end
  num_in_array_format = number.to_s.split("")
  "#{num_in_array_format.last}#{reverse( (num_in_array_format.take(num_in_array_format.length - 1)).join)}".to_i
  
end
