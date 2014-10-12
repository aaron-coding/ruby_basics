#two different implementations of the same thing.


def factors(num) 
  factor_nums = []
  (1..num).each do |i|
    (i..num).each do |j|
      if i * j == num
        factor_nums << i
        factor_nums << j
      end
    end
  end
  factor_nums.uniq
end

def factors(num)
  factor_nums = []
  (1..num).each do |i|
    if num % i == 0
      factor_nums << i
    end
  end
  factor_nums.uniq
end

p factors(12)
p factors(50)
p factors(1023)