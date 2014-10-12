
def bubble_sort(array) 
  array.length.times do 
    array.each_index do |index|
      if !array[index + 1].nil? && array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end 
  
  array
end

p bubble_sort([4,6,1,9,1,5,3,8,6,7,3,234,1])
p bubble_sort((0..1000).to_a.shuffle)