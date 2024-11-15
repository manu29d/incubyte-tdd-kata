# frozen_string_literal: true

# A simple String Calculator that takes in numbers as a string
# and return the integer sum of the numbers
class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?

    custom_delimiter = input_string.match(%r{//(.*)\\n\d+})
    input_string.gsub!(custom_delimiter[1], ',') if custom_delimiter

    input_string.gsub!('\n', ',')
    input_string.split(',').map(&:to_i).reduce(:+)
  end
end
