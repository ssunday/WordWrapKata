require "word_wrap_kata"

describe WordWrapKata do

  before do
    @word_wrap_kata = WordWrapKata.new
  end

  it "does not alter a string of less than max length" do
    max_length = 10
    string = "hello"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq string
  end

  it "breaks a string into two parts" do
    max_length = 3
    string = "hello"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "hel\nlo"
  end

  it "breaks a string into three parts" do
    max_length = 2
    string = "hello"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "he\nll\no"
  end

  it "breaks a string into 5 parts with multiple words" do
    max_length = 4
    string = "hello, I am Sarah"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "hell\no, I\n am \nSara\nh"
  end

  it "breaks a string into 2 parts" do
    max_length = 9
    string = "hello, I am Sarah"
    expect(@word_wrap_kata.wrap(string, max_length)).to eq "hello, I \nam Sarah"
  end

end
