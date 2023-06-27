dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, word|
    if (string.downcase).include?(word)
      result[word] += ((string.downcase).scan(word).length)
    end
      result
  end
end

p sub_strings("below", dictionary)
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)