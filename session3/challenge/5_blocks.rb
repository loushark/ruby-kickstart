# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
def spiral_access(sq_arr, iterate=0, &block)

  x_num = sq_arr.length - 1
  y_num = sq_arr.first.length - 1

  return if y_num/2 < iterate || x_num /2 < iterate

  iterate.upto x_num-iterate do |x|
    block.call sq_arr[iterate][x]
  end

  (iterate+1).upto y_num-iterate do |y|
    block.call sq_arr[y][x_num-iterate]
  end

  (x_num - 1 - iterate).downto iterate do |x|
    block.call sq_arr[y_num-iterate][x]
  end

  (y_num - 1 - iterate).downto iterate+1 do |y|
    block.call sq_arr[y][iterate]
  end

  spiral_access sq_arr, iterate+1, &block

end
