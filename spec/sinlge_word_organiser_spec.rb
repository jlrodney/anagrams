require 'single_word_organiser'

describe 'main' do
  it 'should print a message' do
    allow_any_instance_of(Object).to receive(:gets).and_return('listen')
    word = SingleWordOrganiser.new
    expect{ word.main }.to output("Please enter the word to be checked\n").to_stdout
  end
end

describe 'word input' do
  it 'should throw an error "Please enter a string next time' do
    word = SingleWordOrganiser.new
    expect { word.word_input(Object.new)}. to raise_error\
      'Please enter a string next time'
  end

  it 'should throw an error "Please enter something next time' do
    word = SingleWordOrganiser.new
    expect { word.word_input('')}. to raise_error\
      'Please enter something next time'
  end

  it 'should get the file from user and convert it into an array of words' do
    word = SingleWordOrganiser.new
    expect(word.word_input('hello')).to eq("ehllo")
  end

  it 'should sort a string' do
    word = SingleWordOrganiser.new
    expect(word.word_sorter('lkajsdfnhhd')).to eq('addfhhjklns')
  end
end
