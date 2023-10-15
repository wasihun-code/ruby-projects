# frozen_string_literal: true

def ceasar_cipher(string, shift)
  if string == ''
    return "You have provided an empty string."
  end

  output = ''
  string.each_char do |char|
    # don't shift for characters non alphabetic characters
    if char.ord < 65 || char.ord > 122 || char.ord.between?(91, 96)
      output += ' '
    else
      shifted_digit = char.ord + shift
      # out of alphabetic digit range should be forced to be into range
      if shifted_digit.between?(91, 96) || shifted_digit > 122
        shifted_digit -= 26
      end
      output += shifted_digit.chr
    end
  end
  output
end

print ceasar_cipher("hello", 5) ; puts
