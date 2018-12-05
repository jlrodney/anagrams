require 'anagram_checker'

describe 'main' do\
  it 'should print the instructions and say there are no anagrams for hel' do
    allow_any_instance_of(Object).to receive(:gets).and_return('hel')
    checker = AnagramsChecker.new
    expect { checker.main }.to output(
      "Please enter the word list file path\n"\
      "Please enter the word to be checked\n"\
      "There are no anagrams of hel in your list\n"\
      "Thanks for playing!\n"
    ).to_stdout
  end

  it 'should print the instructions and the anagrams for listen' do
    allow_any_instance_of(Object).to receive(:gets).and_return('listen')
    checker = AnagramsChecker.new
    expect { checker.main }.to output(
      "Please enter the word list file path\n"\
      "Please enter the word to be checked\n"\
      "The following are anagrams of listen:\n"\
      "silent\ntinsel\ninlets\nThanks for playing!\n"
    ).to_stdout
  end
end
