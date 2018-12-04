require 'anagram_checker'

describe 'file input' do
  it 'should get the file from the user and convert it into an array of words' do
    checker = AnagramsChecker.new
    expect(checker.file_input('word_list_test.txt')).to eq(%w[eht fo adn ot a in for])
  end
end
