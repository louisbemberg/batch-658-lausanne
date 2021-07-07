def messy_math(integer)
  first = integer * 4
  second = first + integer
  third = (second * 2) - second
  fourth = integer * second
  return first + second + third + fourth
end


age = 0
until age == 18
  age += 1
  puts "Happy birthday"
end
