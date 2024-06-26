def substrings(string, dictionary)
    strings = string.downcase.split(" ")
    sub_string_hash = dictionary.reduce(Hash.new(0)) do |obj, dictionary_word|
      strings.each do |string_word|
        if string_word.include?(dictionary_word)
          obj[dictionary_word] += 1
        end
      end
      obj
    end
    sub_string_hash
end
dictionary = ["below","down","go",
              "going","horn","how",
              "howdy","it","i","low",
              "own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)