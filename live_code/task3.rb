def triangular(n)
  (1..n).each do |x|
    puts (x+1) * x/2
  end
end

triangular(4)