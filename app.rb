def substrings(words, dictionary)
  words = words.split(" ")
  dictionary.reduce(Hash.new(0)) do |acc, str|
    words.each { |word| acc[str] += 1 if word.include?(str) }
    acc
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
