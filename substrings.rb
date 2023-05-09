def substrings(string, dictionary)
  string_array = string.downcase.split
  result = Hash.new(0)
  string_array.each do |word|
    dictionary.reduce(result) do |result, substring|
      result[substring] += 1 if word.include?(substring)
      result
    end
  end
  result
end

##
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# p substrings("below", dictionary)
# p substrings("Howdy partner, sit down! How's it going?", dictionary)
