# frozen_string_literal: true

# performs mathematical operation methods given integer arguments
class Calculator
  def add(*integers)
    sum = 0
    integers.each { |integer| sum += integer }
    sum
  end

  def subtract(*integers)
    difference = integers.shift
    integers.each { |integer| difference -= integer }
    difference
  end

  def multiply(*integers)
    product = integers.shift
    integers.each { |integer| product *= integer }
    product
  end

  def divide(*integers)
    quotient = integers.shift
    integers.each { |integer| quotient /= integer }
    quotient
  end
end
