require 'minitest/autorun'
require_relative './string_calculator'

describe StringCalculator do
  subject { StringCalculator.new }

  let(:empty_string) { '' }
  let(:simple_string) { '1,2,3' }

  describe 'when input string is empty' do
    it 'should return 0' do
      expect(subject.add(empty_string)).must_equal 0
    end
  end

  describe 'when input string is simple' do
    describe 'when only 1 number is given' do
      it 'should return the number' do
        expect(subject.add('1')).must_equal 1
      end
    end

    it 'should return the correct addition result' do
      expect(subject.add(simple_string)).must_equal 6
    end

    it 'should handle negative numbers' do
      expect(subject.add('1,-1,2')).must_equal 2
    end
  end

  describe 'when input string contains newlines' do
    it 'should return the correct addition result' do
      expect(subject.add('1\n2,3')).must_equal 6
      expect(subject.add('\n2,3')).must_equal 5
      expect(subject.add('1,2\n')).must_equal 3
      expect(subject.add('3\n\n4\n')).must_equal 7
      expect(subject.add('3\n\n4\n-2')).must_equal 5
    end
  end

  describe 'when input string contains custom delimiters' do
    let(:complex_string) { '//;\n1;2;3' }

    it 'should return the correct addition result' do
      expect(subject.add(complex_string)).must_equal 6
    end
  end
end
