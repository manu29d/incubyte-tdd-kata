# frozen_string_literal: true

# A simple String Calculator that takes in numbers as a string
# and return the integer sum of the numbers
class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?

    numbers = input_string.scan(/-?\d+/).map(&:to_i)
    negative_numbers = numbers.select(&:negative?)

    raise(ArgumentError, "negative numbers not allowed #{negative_numbers.join(',')}") unless negative_numbers.empty?

    numbers.reduce(:+)
  end
end
