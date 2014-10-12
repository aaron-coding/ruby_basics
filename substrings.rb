def substrings(string) 
  sub_strings = []
  (0...string.length).each do |i|
    (i...string.length).each do |j|
      sub_strings << string[i..j]
    end
  end
  sub_strings.uniq
end

def subwords(string)  #Get all substrings that are words.
  dictionary_hash = get_dictionary()
  all_strings = substrings(string)
  result_array = []
  all_strings.each do |char_set|
    if dictionary_hash.include?(char_set)
      result_array << char_set
    end
  end
  result_array
end

def get_dictionary
  dictionary_hash = {}
  File.foreach("dictionary.txt") do |line|
    dictionary_hash[line.chomp] = true 
  end
  dictionary_hash
end

p substrings("cat")
puts ""
p subwords("cat")