def caesar_cipher(str, int)

  result = []

  lowercase_letters = ("a".ord.."z".ord).to_a
  uppercase_letters = ("A".ord.."Z".ord).to_a

	str.each_char do |letter|

    if lowercase_letters.include?(letter.ord)
      # wrap back to beginning of alphabet if new letter > z  
      if letter.ord + int > lowercase_letters[-1] 
        num = lowercase_letters[-1] - letter.ord 
        result.push(lowercase_letters[int - num - 1].chr) 
      else
        result.push((letter.ord + int).chr)
      end
    elsif uppercase_letters.include?(letter.ord)
      # wrap back to beginning of alphabet if new letter > z 
      if letter.ord + int > uppercase_letters[-1]
        num = uppercase_letters[-1] - letter.ord 
        result.push(uppercase_letters[int - num - 1].chr) 
      else
        result.push((letter.ord + int).chr)
      end
    else
      result.push(letter)
    end
	end
   
   result.join('') 

end