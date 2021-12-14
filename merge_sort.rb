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