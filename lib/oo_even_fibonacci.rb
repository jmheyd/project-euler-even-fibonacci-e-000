# Implement your object-oriented solution here!
 class EvenFibonacci

  def initialize(limit, fibonacci_array = nil)
    @limit = limit
    @fibonacci_array = fibonacci_array || Array.new
  end

  def sum
    @fibonacci_array = []
    @fibonacci_array[0] = 1
    @fibonacci_array[1] = 2
    i = 1
    while @fibonacci_array[i] < @limit
      @fibonacci_array[i + 1] = @fibonacci_array[i] + @fibonacci_array[i-1]
      i += 1 
    end
    @fibonacci_array = @fibonacci_array.select {|x| x < @limit}
    even_fibonacci_array = @fibonacci_array.select {|x| x.even?}
    sum_even = even_fibonacci_array.inject(:+)
    return sum_even
  end
end
  