# Iterative solution
def fibs(n)
  return [] if n <= 0
  return [0] if n == 1
  return [0, 1] if n == 2
  fib_array = [0, 1]
  2.upto(n - 1) do |i|
    fib_array.push(fib_array[i - 1] + fib_array[i - 2])
  end
  fib_array
end

# Recursive solution
def fibs_rec(n)
  return [] if n <= 0
  return [0] if n == 1
  return [0, 1] if n == 2
  temp_array = fibs_rec(n - 1)
  fib_array = temp_array.push(temp_array[n - 2] + temp_array[n - 3])
end

p fibs(12)
p fibs_rec(12)