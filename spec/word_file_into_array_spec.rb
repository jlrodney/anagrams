require 'anagram_checker'

describe 'word file into array' do
  it 'should take a txt file and convert it into an array of sorted words' do
    checker = AnagramsChecker.new
    expect(checker.word_file_into_array('word_list_test.txt')).to eq(
      %w[eht ehllo eilnst fo adn ot a in for]
    )
  end
end
