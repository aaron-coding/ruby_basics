#!/usr/bin/env ruby


class Array
  def my_uniq #removes duplicates in an array.
    seen = []
    self.each do |x|
      seen << x unless seen.include?(x)    
    end
    seen
  end
  
  def two_sum #returns sets of 2 indexes of elements which add to 0
    result_array = []
    (0...self.size).each do |first_num|
      (first_num + 1...self.size).each do |sec_num|
        if self[first_num] + self[sec_num] == 0
          result_array << [first_num, sec_num]  
        end
      end
    end
    result_array
  end
end


if __FILE__ == $PROGRAM_NAME
  p [-1, 0, 2, -2, 1].two_sum
end