require 'pry'

class PigLatinizer
  attr_accessor :text
  def initialize(text)
    @text = text
  end

  def piglatinize
    text_array = text.split(' ')

    fixed_text =text_array.collect do |text|
      # find first vowel position
      vowel_index = text.index(/[aeiou]/)
      last = text.length-1
      new_word = ""
      # if the first vowel is not 0
      if !vowel_index.zero?
        # cut the position from 0 to position-1
        prefix = text[0..vowel_index-1]
        # add cut piece to the end of text
        new_word = text[vowel_index..last]+prefix
      # otherwise
      else
        # add 'w'
        new_word = a+'w'
      end
      # add 'ay'
      new_word += 'ay'
    end
    binding.pry
  end
end

PigLatinizer.new("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish").piglatinize
