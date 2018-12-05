class SingleWordOrganiser
  attr_reader :initial_word, :rearranged_word

  def initialize
    @initial_word = ''
    @rearranged_word = ''
  end

  def main
    puts 'Please enter the word to be checked'
    word_input
  end

  def word_sorter(string)
    string.split('').sort.join('').strip
  end

  def word_input(word = gets.chomp.downcase)
    validate_input(word)
    @initial_word = word
    input_sorter(word)
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

  def input_sorter(word)
    @rearranged_word = word_sorter(word)
  end
end
