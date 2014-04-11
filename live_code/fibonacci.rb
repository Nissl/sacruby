def fibonacci(n)
  prior = 0
  current = 1
  (0..n).each do
    puts current
    prior, current = current, current + prior
  end
end

fibonacci(10)

# add 0, 1, 2, 3, 4