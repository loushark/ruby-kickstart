# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
  hash = {}
  number = (1..num)

  number.each { |i|
    if i.odd?
      arr = Array.new(i) { |x| x + 1}
        even = arr.select {|y| y.even?}
        hash[i] = even
    end
  }

  p hash
end
