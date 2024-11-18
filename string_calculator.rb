# frozen_string_literal: true

# A simple String Calculator that takes in numbers as a string
# and return the integer sum of the numbers
class StringCalculator
  def add(input_string)
    return 0 if input_string.empty?

    delimiter_regex = %r{^//([^\\n]+)\\n}
    input_string.match(delimiter_regex)
    input_string.gsub!(delimiter_regex, '')

    delimiter = ::Regexp.last_match(1) || ','

    input_string.gsub!('\n', delimiter)
    numbers = input_string.split(delimiter).map(&:to_i)
    negative_numbers = numbers.select(&:negative?)

    raise(ArgumentError, "negative numbers not allowed #{negative_numbers.join(',')}") unless negative_numbers.empty?

    numbers.reduce(:+)
  end
end
