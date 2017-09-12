require 'sphinx'
require 'rspec'
require 'pry'

describe("Sphinx") do
  riddles = {
    "What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?" => "man",
    "What starts with a t, ends with a t, and has t in it?" => "teapot",
    "Thirty white horses on a red hill\nFirst they champ\nThen they stamp\nThen they stand still." => "teeth",
    "What always ends everything?" => "g",
    "What has four fingers and a thumb, but is not living?" => "glove",
    "I have keys but no locks. I have a space but no room. You can enter, but can't go outside. What am I?" => "keyboard"
  }
  riddle1 = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "man")
  riddle2 = Riddle.new("What starts with a t, ends with a t, and has t in it?", "teapot")
  riddle3 = Riddle.new("Thirty white horses on a red hill\nFirst they champ\nThen they stamp\nThen they stand still.", "teeth")
  riddle4 = Riddle.new("What always ends everything?", "g")
  riddle5 = Riddle.new("What has four fingers and a thumb, but is not living?", "glove")
  riddle6 = Riddle.new("I have keys but no locks. I have a space but no room. You can enter, but can't go outside. What am I?", "keyboard")
  sphinx = Sphinx.new([riddle1, riddle2, riddle3, riddle4, riddle5, riddle6])

  # riddles = {question => answer}
  # current_question = sphinx.ask_question
  # current_answer = riddles[current_question]
  # expect(sphinx.check_answer(current_answer)).to(eq)
  it "stores 3 riddles and answers" do
    expect(sphinx.riddles).to(eq([riddle1, riddle2, riddle3, riddle4, riddle5, riddle6]))
  end

  it "returns result when match is false" do
    expect(sphinx.check_answer("tyrannosaurus")).to(eq("You've been strangled by a sphinx!"))
  end

  it "resets count when match is false" do
    expect(sphinx.riddle_count).to(eq(0))
  end

  it "moves on to the next question when match is true" do
    current_question = sphinx.ask_question
    current_answer = riddles[current_question]
    expect(sphinx.check_answer(current_answer)).to(eq("Correct! Next question... "))
  end

  it "lets user enter Thebes after third correct answer" do
    current_question = sphinx.ask_question
    current_answer = riddles[current_question]
    sphinx.check_answer(current_answer)
    current_question = sphinx.ask_question
    current_answer = riddles[current_question]
    expect(sphinx.check_answer(current_answer)).to(eq("Welcome! The ancient treasure of Thebes is yours!"))
  end

  it "resets counts after user enters Thebes" do
    expect(sphinx.riddle_count).to(eq(0))
  end
end
