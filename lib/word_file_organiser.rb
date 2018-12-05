class WordFileOrganiser
  attr_reader :sorted_word_in_array, :word_list_array

  def initialize
    @sorted_word_in_array = []
    @word_list_array = []
  end

  def main
    puts 'Please enter the word list file path'
    file_input
  end

  def file_input(file = gets.chomp)
    validate_input(file)
    word_file_into_array(file)
  end

  def word_file_into_array(file)
    @word_list_array = File.open(file).read.downcase.split(/\W+/)
    sort_the_arrays(@word_list_array)
  end

  def sort_the_arrays(array)
    i = 0
    while i < array.length
      @sorted_word_in_array << word_sorter(array[i])
      i += 1
    end
    @sorted_word_in_array
  end

  def word_sorter(string)
    string.split('').sort.join('').strip
  end

  private

  def validate_input(input)
    raise 'Please enter something next time' unless not_empty?(input)
    raise 'Please enter a string next time' unless string?(input)
  end

  def not_empty?(input)
    input != ''
  end

  def string?(input)
    input.instance_of?(String)
  end
end
