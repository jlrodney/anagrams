def word_splitter(string)
  split_string = string.split('')
  word_permutations(split_string)
end

def word_permutations(array)
  permutations = array.permutation.to_a
end
