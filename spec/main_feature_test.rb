require 'anagram_checker'

describe 'main' do\
  it 'should print the instructions and say there are no anagrams for hel' do
    allow_any_instance_of(Object).to receive(:gets).and_return('hel')
    checker = AnagramsChecker.new
    expect { checker.main }.to output("Please enter the word list file path\nPlease enter the word to be checked\nThere are no anagrams of hel in your list\nThanks for playing!\n").to_stdout
  end

  it 'should print the instructions and the anagrams for listen' do
    allow_any_instance_of(Object).to receive(:gets).and_return('listen')
    checker = AnagramsChecker.new
    expect { checker.main }.to output("Please enter the word list file path\nPlease enter the word to be checked\nThe following are anagrams of listen:\nsilent\ntinsel\ninlets\nThanks for playing!\n").to_stdout
  end
end
