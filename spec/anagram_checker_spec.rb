require 'anagram_checker'

describe 'printer' do
  let(:words_list_double) do
    double :words_list, main: nil, rearranged_word: nil,
                        initial_word: 'hello'
  end
  let(:word_double) do
    double :word, main: nil,
                  word_list_array: %w[hel I two fun],
                  sorted_word_in_array: %w[a b],
                  initial_word: 'hello'
  end
  it 'prints the array if it does not match the initial word' do
    checker = AnagramsChecker.new(word_double, words_list_double)
    expect { checker.printer(%w[listen silent]) }.to output(
      "The following are anagrams of hello:\nlisten\nsilent\n"
    ).to_stdout
  end
  it 'prints the array if it does not match the initial word' do
    checker = AnagramsChecker.new(word_double, words_list_double)
    expect { checker.printer([]) }.to output(
      "There are no anagrams of hello in your list\n"
    ).to_stdout
  end
  it 'prints the array if it does not match the initial word' do
    checker = AnagramsChecker.new(word_double, words_list_double)
    expect { checker.printer(['hello']) }.to output(
      "There are no anagrams of hello in your list\n"
    ).to_stdout
  end
end
