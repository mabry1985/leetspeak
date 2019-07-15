# userinput = gets.chomp
# p userInput
#   def leetspeak(userInput)
#     userInput = userInput.tr('e', '3').tr('o', '0').tr('I', '1')
#     input_array = userInput.split
#     leet_array = arr.map{|x| x[0] + x[1..-1].tr('s', 'z')}
#     phrase = leet_array.join(' ')
#   end
# p leetspeak(userInput)

require('pry')

class String
  def leetspeak()
    word_array = self.split(' ')
    leet_array = []
    word_array.each() do |word_element|
    letter_array = word_element.split('')
    letter_array.each() do |array_element|
      binding.pry
      if (array_element === "e") | (array_element === "E")
        leet_array.push(3)
      elsif (array_element === "o") | (array_element === "O")
        leet_array.push(0)
      elsif array_element === "I"
        leet_array.push(1)
      elsif ((array_element === "S") | (array_element === "s"))
          if ((letter_array[0] === "s") | (letter_array[0] === "S"))
            leet_array.push("s")
          else
            leet_array.push("z")
          end
      else
        leet_array.push(array_element)
      end
    end
  end
  puts(leet_array)
  leet_array
  end
end
