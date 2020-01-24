# Write a function that takes two arrays (arr1 and arr2) of integers and
#  returns an array with all the subsets commmon to both.

# Don't generate all subsets of arr1 and arr2, which would take time 
# exponential in the size of arr1/arr2 (and take O(2**n) memory as well). 
# Instead, directly generate the subsets of both.


# def common_subsets(arr1, arr2)
#   uniq1 = arr1.uniq.sort
#   uniq2 = arr2.uniq.sort
#   newArr = []
#   uniq1.each { |ele| newArr.push(ele) if uniq2.include?(ele) }

#   subsets = [[]]
#   newArr.each_with_index do |num1, i|
    
#   end
# end 


# Given an array and index, find if it's possible to reach the value 0 by 
# starting at the given index and repeatedly moving left/right by the distance
# found at array[index].
# Hint: Use memoization to record where you've been.
require "set"

def can_win?(arr, startIdx) 
  
  queue = [startIdx]
  set = Set.new

  while (queue.length > 0) 
    currIdx = queue[0]

    if set.include?(currIdx) 
      queue.shift
      next
    else 
      set << currIdx
    end
    
    currEle = arr[currIdx]

    return true if currEle == 0

    if (currIdx - currEle >= 0) # left
      queue.push(currIdx - currEle)
    end 

    if (currIdx + currEle < arr.length)
      queue.push(currIdx + currEle)
    end 
    
    queue.shift
  end 

  return false
end 


# [1, 3, 6, 8, 4,]

p can_win?([1, 0, 1], 0)
# => true

p can_win?([1, 2, 0], 0)
# => false

[2, 0, 1]