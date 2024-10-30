

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (input, dictionary)
  def cleanInput (string)
    string.gsub(/[^a-zA-Z]/, ' ').downcase
  end
  input_array = cleanInput(input).split(' ')
  matching_hash = Hash.new(0)
  input_array.each do |input_word|
    dictionary.each do |dictionary_word|
      result = dictionary_word.split('') - input_word.split('')
      if result.empty?
        matching_hash[dictionary_word] += 1
      end
    end
  end
  p matching_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

#substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }
#> substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }