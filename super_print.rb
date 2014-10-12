# Uses an options hash to give the caller of the function some options.

def super_print(string, options={})
  defaults = {
    times: 1,
    upcase: false,
    reverse: false 
  }
  
  options = defaults.merge(options)
  if options[:upcase]
    string.upcase!
  end
  if options[:reverse]
    string.reverse!
  end
  result = ''
  options[:times].times do
    result += "#{string} "
  end
  result.strip
end

p super_print("Hello")                                  
p super_print("What did you say?", :times => 3)                     
p super_print("Hello", :upcase => true)                 
p super_print("Madam, I'm Adam", :upcase => true, :reverse => true)
