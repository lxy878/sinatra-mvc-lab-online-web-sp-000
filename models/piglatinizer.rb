require 'pry'

class PigLatinizer
  attr_accessor :text
  def initialize(text)
    @text = text
  end

  def piglatinize
    text_array = text.split(' ')
    a = text_array[2]
    # find first vowel position
    vowel_index = a.index(/[aeiou]/)
    last = a.length-1
    new_word = ""
    # if the first vowel is not 0
    if !vowel_index.zero?
      # cut the position from 0 to position-1
      prefix = a[0..vowel_index-1]
      # add cut piece to the end of text
      new_word = a[vowel_index..last]+prefix
    # otherwise
    else
      # add 'w'
      new_word = a+'w'
    end
    # add 'ay'
    new_word += 'ay'
    binding.pry
  end
end

PigLatinizer.new("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish").piglatinize
