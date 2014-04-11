def prime?(n)
  (2..n/2).each do |factor|
    if n % factor == 0
      return false
    end
  end
  true 
end

puts prime?(9)
puts prime?(11)
puts prime?(57)
puts prime?(59)
puts prime?(99)