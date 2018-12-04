
def main
  puts "Please enter the word to be checked"
  word_input
  puts "Please enter the file path"
  file_input
  puts "Thanks for playing!"
end

def word_input(word=gets.chomp)
   word_splitter(word)
end

def file_input(file = gets.chomp)
end

def word_splitter(string)
  split_string = string.split('')
  word_permutations(split_string)
end

def word_permutations(array)
  permutations = array.permutation.to_a
end
