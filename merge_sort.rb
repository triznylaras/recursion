def fibs(n)
  array = [0, 1]
  n < 2 ? n : (n - 1).times { array.push(array[-1] + array[-2]) }
  array
end

def fibs_rec(n)
  n < 2 ? n : fibs_rec(n - 1) + fibs_rec(n - 2)
end

fib_seq = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
puts "----iterative fibonacci----"
p fibs(9)
puts "----recursive fibonacci----"
p fibs_rec(9)

def merge_sort(array)
  return array if array.size < 2
  left = merge_sort(array[0...array.size / 2])
  right = merge_sort(array[array.size / 2...array.size])
  sort(left, right)
end

def sort(left, right, array = [])
  (left.size + right.size).times do
    if left.empty?
      array << right.shift
    elsif right.empty?
      array << left.shift
    else
      comparison = left <=> right
      if comparison == -1
        array << left.shift
      elsif comparison == 1
        array << right.shift
      else
        array << left.shift
      end
    end
  end
  array
end

array = []
10.times do
  array << rand(10)
end
puts "----recursive merge sort----"
puts "given array : "
p array
puts "sorted array : "
p merge_sort(array)