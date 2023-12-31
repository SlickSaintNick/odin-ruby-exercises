# frozen_string_literal: true

def caesar_cipher(string, cipher)
  cipher_string = ''
  string.each_char do |char|
    cipher_ascii =
      if char.ord > 96 && char.ord < 123     # Lowercase a-z
        (char.ord - 97 + cipher) % 26 + 97
      elsif char.ord > 64 && char.ord < 91   # Uppercase A-Z
        (char.ord - 65 + cipher) % 26 + 65
      else                                   # Other characters
        char.ord
      end
    cipher_string += cipher_ascii.chr
  end
  cipher_string
end

string = 'What a string!'
cipher = 5

puts caesar_cipher(string, cipher)
