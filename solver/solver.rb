class Solver
  def factorial(num)
    raise ArgumentError, 'Input must be a non-negative integer' if num.negative?

    result = 1
    (1..num).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(item)
    if (item % 3).zero? && (item % 5).zero?
      'fizzbuzz'
    elsif (item % 3).zero?
      'fizz'
    elsif (item % 5).zero?
      'buzz'
    else
      item.to_s
    end
  end
end
