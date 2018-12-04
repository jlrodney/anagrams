require 'anagram_checker'

describe 'main' do
  it 'should print the instructions' do
    allow_any_instance_of(Object).to receive(:gets).and_return('hel')
    expect{ main }.to output("Please enter the word list file path\nPlease enter the word to be checked\nThanks for playing!\n").to_stdout
  end
end
