dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

words = "Howdy partner, sit down! How's it going?"

def substring(string, array)
  array.reduce(Hash.new(0)) do |result, word|
    if string.downcase.include?(word.downcase)
      result[word.downcase] += string.downcase.scan(word.downcase).length
    end
    result
  end
end
puts "result: "
p substring(words, dictionary)