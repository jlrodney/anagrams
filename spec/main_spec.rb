require 'anagram_checker'

describe 'word_splitter' do
  xit 'should print instructions' do
    expect { main }.to output("Please enter the word to be checked\n").to_stdout
  end
end
