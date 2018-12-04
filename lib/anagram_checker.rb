
def main
  puts "Please enter the word list file path"
  file_input
  puts "Please enter the word to be checked"
  word_input
  puts "Thanks for playing!"
end

def word_input(word=gets.chomp)
  @word = word
  input_sorter(word)
end

def file_input(file = gets.chomp)
  word_file_into_array(file)

end

def word_sorter(string)
   return string.split('').sort.join('').strip
end

def input_sorter(word)
  rearranged_word = word_sorter(word)
  # matcher(rearranged_word)
end

def word_file_into_array(file)
  @word_list_array = []
  File.open(file) do |f|
    f.each_line do |line|
      @word_list_array << line.split
    end
  end
  sort_the_arrays(@word_list_array)
end

def sort_the_arrays(array)
  i = 0
  @sorted_word_in_array = []
  while i < array.length
    @sorted_word_in_array << word_sorter(array[i][0])
    i += 1
  end
  @sorted_word_in_array
end
