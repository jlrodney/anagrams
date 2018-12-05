require 'anagram_checker'

describe 'file input' do
  it 'should get the file from user and convert it into an array of words' do
    checker = AnagramsChecker.new
    expect(checker.file_input('word_list_test.txt')).to eq(
      %w[eht ehllo eilnst fo adn ot a in for]
    )
  end
end
