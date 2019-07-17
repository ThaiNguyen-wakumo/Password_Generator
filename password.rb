require 'pry'

class Password

  ALPHA = ('a'..'z').to_a
  DIGIT = ('0'..'9').to_a
  UPPER = ('A'..'Z').to_a
  PUNCT = ('#'..'.').to_a
  
  def self.generate (length: 10, upper: 2, digit: 2, punct: 1, unique: true)
    if unique == true
      if digit + punct + upper <= length
        (UPPER.sample(upper) + DIGIT.sample(digit) + PUNCT.sample(punct) + ALPHA.sample(length-digit-upper-punct)).shuffle.join
      else
        return false
      end
    else
      return false
    end
  end
end