require 'pry'

class PigLatinizer
  attr_accessor :text
  def initialize(text)
    @text = text
  end

  def piglatinize
    text_array = text.split(' ')
    text_array.collect do |text|
      # find first vowel position
      # if the first vowel is not 0
        # cut the position from 0 to position-1
        # add cut piece to the end of text
      add 'ay'

    end
    binding.pry
  end
end

PigLatinizer.new("He was an old man who fished alone in a skiff in the Gulf Stream and he had gone eighty four days now without taking a fish").piglatinize
