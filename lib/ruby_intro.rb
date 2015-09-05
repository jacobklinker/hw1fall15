def sum(arr)
  arr.inject(0, &:+)
end

def max_2_sum(arr)
  sum arr.sort.reverse.take(2)
end

def sum_to_n?(arr, n)
  arr.combination(2).each do |x,y|
    return true if (x + y) == n
  end
  return false
end

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  s.downcase.match(/^(?=[^aeiou])(?=[a-z])/)
end

def binary_multiple_of_4?(s)
  return s == '0' if s.length == 1
  return s.match(/^[10]*00$/)
end

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    raise ArgumentError.new("Invalid params") if isbn.length == 0 || price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%0.2f" % @price
  end
end