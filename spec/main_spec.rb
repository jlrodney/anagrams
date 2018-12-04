require 'anagram_checker'

describe 'word_splitter' do
  it 'should print the instructions' do
    allow_any_instance_of(Object).to receive(:gets).and_return('hel')
    expect{ main }.to output("Please enter the word to be checked\nPlease enter the file path\nThanks for playing!\n").to_stdout
  end
end
