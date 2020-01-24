# Write a function that takes an array and returns all of its subsets. How many
# sets will it return? 
# ["a", "b", "c"] => [[], ['a'], ['c'], ['b'], ['c', 'b'], ['c', 'a'], ['b', 'a'], ['c', 'b', 'a']]

# [] => [ [] ]

# [ 1 ]      [] 
# [ [] ] => [ [], [1] ]

# [ 1, 2, 3, 4]     [ [], [2] ] => [ [], [1], [1, 2] ]


def subsets(arr)
  return [ [] ] if arr.empty?
  subs = subsets(arr.drop(1)) # [ [] ]
  return subs.concat(subs.map { |sub| [arr.first].concat(sub) })
end

# [1, 2, 3]  => [[], [3], [2], [2, 3]]

# subs = [[], [3], [2], [2, 3]] => [[], [3], [2], [2, 3], [1], [1, 3], [1, 2], [1, 2, 3]]

# def subsets(arr)
#   subs = [[]]

#   arr.each.with_index do |ele, i|
#     arr.each.with_index do |ele2, j|
#       if j >= i <-- wow...
#         subs << arr[i..j]
#       else 
#         subs << [arr[j], arr[i]]
#       end
#     end
#   end

#   subs
# end

p subsets([1, 2, 3])