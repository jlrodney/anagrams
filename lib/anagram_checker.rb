
def main
  puts "Please enter the word to be checked"
  word_input
  puts "Please enter the file path"
  file_input
  puts "Thanks for playing!"
end

def word_input(word=gets.chomp)
   word_sorter(word)
end

def file_input(file = gets.chomp)
  word_file_into_array(file)
end

def word_sorter(string)
  sorted_string = string.split('').sort.join('').strip
end

def word_file_into_array(file)
  word_list_array = []
  File.open(file) do |f|
    f.each_line do |line|
      word_list_array << line.split
    end
  end
  word_list_array
end
