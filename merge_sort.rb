def fibs(n)
  array = [0, 1]
  return n if n < 2
  (n-1).times { |i| array.push(array[-1] + array[-2]) }
  array
end

fib_seq = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
p fibs(9)