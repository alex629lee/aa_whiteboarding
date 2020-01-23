# Write a method, digital_root(num). It should sum the digits of a positive integer. 
# If it is greater than or equal to 10, sum the digits of the resulting number. 
# Keep repeating until there is only one digit in the result, called the "digital
# root". Do not use string conversion within your method.

def digital_root(num)
# sum variable 
# while loop => num > 0 
# mod 10 add that to the sum var 
# div num by ten and reassign to num 
# check if sum >= 10 => digital_root(newNum) => return this

  sum = 0
  while num > 0 
    sum += num % 10 
    num /= 10
  end

  if sum >= 10 
    digital_root(sum)
  else 
    sum 
  end 
end 

# def digital_root_step(num)

# end

p digital_root(15)
p digital_root(50)
p digital_root(552)


# Write a function that takes a message and an increment amount and outputs
# the same letters shifted by that amount in the alphabet. Assume lowercase 
# and no punctuation. Preserve spaces.

def cipher(str, shift)
  alphabet = ("a".."z").to_a
  
  i = 0
  while i < str.length 
    if str[i] == " "
      i += 1
      next
    end 
    char = str[i]
    prevIdx = alphabet.index(char)
    newIdx = (prevIdx + shift) % 26
    str[i] = alphabet[newIdx]
    i += 1
  end 
  str
end

p cipher("hello", 1)