# frozen_string_literal: true

require './lib/calculator'

describe "calculator" do
  it "adds numbers" do
    calc = Calculator.new
    expect(calc.add(2, 3)).to eql(5)
  end
end

describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      expect(subject.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      expect(subject.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#subtract' do
    it 'returns the difference between two numbers' do
      expect(subject.subtract(5, 2)).to eql(3)
    end

    it 'returns the difference of subsequent numbers' do
      expect(subject.subtract(5, 2, 2)).to eql(1)
    end
  end

  describe '#multiply' do
    it 'returns the product of two numbers' do
      expect(subject.multiply(5, 2)).to eql(10)
    end

    it 'returns the product of more than two numbers' do
      expect(subject.multiply(5, 2, 3)).to eql(30)
    end
  end

  describe '#divide' do
    it 'returns the quotient of two numbers' do
      expect(subject.divide(6, 2)).to eql(3)
    end

    it 'returns the quotient of subsequent numbers' do
      expect(subject.divide(6, 2, 3)).to eql(1)
    end
  end
end
