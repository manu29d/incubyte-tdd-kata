require 'minitest/autorun'
require_relative './string_calculator.rb'

describe StringCalculator do
  subject { StringCalculator.new }

  let(:empty_string) { '' }
  let(:simple_string) { '1,2,3' }

  describe 'when input string is empty' do
    it 'should return 0' do
      expect(subject.add(empty_string)).must_equal 0
    end
  end
end
