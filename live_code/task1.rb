# write a function to reverse a string's word order
def reverse_string(input)
  input = input.split(" ")
  input.reverse!
  return input.join(" ")
end

input = "see spot run"
puts reverse_string("see spot run")