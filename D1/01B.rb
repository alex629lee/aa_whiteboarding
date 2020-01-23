# Write a function, longest_common_substring(str1, str2) that takes two strings
# and returns the longest common substring. A substring is defined as any
# consecutive slice of letters from another string.

def longest_common_substring(str1, str2)
  # call helper method, passing in the string and saving new array in a var
  # Iterate through one, and see if current substring is included in other arr.
  # if included? => save current substring to var if var is null or 
  #if var.length > current substring, do nothing. else => save curent sub to var.
  # return var.A
  str1_arr = substring(str1)
  longest = ""
  str1_arr.each do |subStr|
    if(str2.include?(subStr))
      longest = subStr if longest == ""
      longest = subStr if longest.length < subStr.length
    end
  end

  longest
end

# helper method that finds all substrings and returns an array

def substring(str)
  # start from index i and slice up to i + 1 to get at least one character
  subs = []
  str.each_char.with_index do |char, i|
    str.each_char.with_index do |char2, j|
      if j > i
        subs << str[i..j]
      end
    end
  end

  subs
end









# Bonus: solve it in O(m * n) using O(m * n) extra space. (Hint: the solution
# involves dynamic programming which will be introduced later in the course.)