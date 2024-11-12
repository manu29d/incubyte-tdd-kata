# frozen_string_literal: true

# A simple String Calculator that takes in numbers as a string
# and return the integer sum of the numbers
class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?

    input_string.split(',').map(&:to_i).reduce(:+)
  end
end
