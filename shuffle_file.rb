#./usr/bin/env ruby

def shuffle_file
  puts "What file do you want shuffled?"
  user_input = gets.chomp
  to_shuffle = File.readlines("#{user_input}.txt")
  some_array = to_shuffle.map{|x| x.chomp}.shuffle
  File.open("#{user_input}-shuffled.txt", "w") do |f|
    some_array.each do |line|
      f.puts(line)
    end
  end
end

p shuffle_file
