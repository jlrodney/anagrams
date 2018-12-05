require_relative 'word_file_organiser'
require_relative 'single_word_organiser'
class AnagramsChecker

  def initialize(words_list=WordFileOrganiser.new, word=SingleWordOrganiser.new)
    @words_list = words_list
    @word = word
  end

  def main
    @words_list.main
    @word.main
    matcher(@word.rearranged_word)
    puts 'Thanks for playing!'
  end

  def printer(array)
    if array.empty? || (array.length == 1 && array[0] = @word.initial_word)
      puts "There are no anagrams of #{@word.initial_word} in your list"
    else
      i = 0
      puts "The following are anagrams of #{@word.initial_word}:"
      while i < array.length
        puts array[i] if array[i] != @word.initial_word
        i += 1
      end
    end
  end
  private
  def matched_words(index_of_words)
    i = 0
    words = []
    while i < index_of_words.length
      words << @words_list.word_list_array[index_of_words[i]]
      i += 1
    end
    printer(words)
  end
  def matcher(word)
    i = 0
    matched_words_index = []
    while i < @words_list.sorted_word_in_array.length
      matched_words_index << i if word == @words_list.sorted_word_in_array[i]
      i += 1
    end
    matched_words(matched_words_index)
  end

end
