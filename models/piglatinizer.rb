require 'pry'

class PigLatinizer
  attr_accessor :text
  def initialize(text)
    @text = text
  end

  def piglatinize
    text_array = text.split(' ')
    a = text_array.first
    # find first vowel position
    vowel_index = a.index(/[aeiou]/)
    # if the first vowel is not 0
    if vowel_index.zero?
      # cut the position from 0 to position-1
      prefix = a[0..vowel_index-1]
      # add cut piece to the end of text
    # otherwise
    else
      # add 'w'
    # add 'ay'
    end
    binding.pry
  end
end

PigLatinizer.new("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish").piglatinize
