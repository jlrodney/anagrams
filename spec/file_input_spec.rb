require 'anagram_checker'

describe 'file input' do
  it 'should get the file from user and convert it into an array of words' do
    checker = AnagramsChecker.new
    expect(checker.file_input('word_list_test.txt')).to eq(
      %w[eht ehllo eilnst fo adn ot a in for]
    )
  end

  it 'should throw an error "Please enter something next time"' do
    checker = AnagramsChecker.new
    expect { checker.file_input('')}. to raise_error\
      'Please enter something next time'
  end

  it 'should throw an error "Please enter something next time"' do
    checker = AnagramsChecker.new
    expect { checker.file_input(Object.new)}. to raise_error\
      'Please enter a string next time'
  end
end
