def caesar_cipher(string, key)
  string_ordinal_array = string.bytes
  new_string = string_ordinal_array.map do |char|
    if char < 91 and char > 64
      new_char = char + key
      new_char < 91 ? new_char.chr : (new_char - 26).chr
    elsif char < 123 and char > 96
      new_char = char + key
      new_char < 123 ? new_char.chr : (new_char - 26).chr
    else
      char.chr
    end
  end
  new_string.join
end

p caesar_cipher("What a string!", 5)