class AnagramsChecker
  def main
    puts 'Please enter the word list file path'
    file_input
    puts 'Please enter the word to be checked'
    word_input
    puts 'Thanks for playing!'
  end

  def file_input(file = gets.chomp)
    word_file_into_array(file)
  end

  def word_sorter(string)
    string.split('').sort.join('').strip
  end

  def word_file_into_array(file)
    @word_list_array = File.open(file).read.downcase.split(/\W+/)
    sort_the_arrays(@word_list_array)
  end

  def sort_the_arrays(array)
    i = 0
    @sorted_word_in_array = []
    while i < array.length
      @sorted_word_in_array << word_sorter(array[i])
      i += 1
    end
    @sorted_word_in_array
  end

  def matcher(word)
    i = 0
    matched_words_index = []
    while i < @sorted_word_in_array.length
      matched_words_index << i if word == @sorted_word_in_array[i]
      i += 1
    end
    matched_words(matched_words_index)
  end

  def printer(words)
    if words.empty?
      puts "There are no anagrams of #{@initial_word} in your list"
    else
      i = 0
      puts "The following are anagrams of #{@initial_word}:"
      while i < words.length
        puts words[i] if words[i] != @initial_word
        i += 1
      end
    end
  end

  private

  def matched_words(index_of_words)
    i = 0
    words = []
    while i < index_of_words.length
      words << @word_list_array[index_of_words[i]]
      i += 1
    end
    printer(words)
  end

  def input_sorter(word)
    rearranged_word = word_sorter(word)
    matcher(rearranged_word)
  end

  def word_input(word = gets.chomp.downcase)
    @initial_word = word
    input_sorter(word)
  end
end
