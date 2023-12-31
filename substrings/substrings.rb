# frozen_string_literal: true

def substrings(input, dictionary)
  # Split input into an array of lowercased words, with all punctuation removed.
  input_words = input.downcase.gsub(/[^a-z ]/, '').split(' ')

  # Iterate over the dictionary, then the input words.
  # For each dictionary word, increment its count each time it is included in an input word.
  dictionary.reduce(Hash.new(0)) do |result, dictionary_word|
    input_words.each do |input_word|
      result[dictionary_word.to_s] += 1 if input_word.include?(dictionary_word)
    end
    result
  end
end

# Test and output result.
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
input = 'Howdy partner, sit down! How\'s it going?'
p substrings(input, dictionary)
