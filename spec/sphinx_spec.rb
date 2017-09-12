require 'sphinx'
require 'rspec'
require 'pry'

describe("Sphinx") do
  riddle1 = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "man")
  riddle2 = Riddle.new("What starts with a t, ends with a t, and has t in it?", "teapot")
  riddle3 = Riddle.new("Thirty white horses on a red hill\nFirst they champ\nThen they stamp\nThen they stand still.", "teeth")
  sphinx = Sphinx.new([riddle1, riddle2, riddle3])

  it "stores 3 riddles and answers" do
    expect(sphinx.ask_question).to(eq("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?"))
  end

  it "returns correct riddle's question" do
    sphinx.check_answer("man")
    expect(sphinx.ask_question).to(eq("What starts with a t, ends with a t, and has t in it?"))
  end

  it "returns result when match is false" do
    expect(sphinx.check_answer("tyrannosaurus")).to(eq("You've been strangled by a sphinx!"))
  end

  it "resets count when match is false" do
    expect(sphinx.ask_question).to(eq("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?"))
  end

  it "moves on to the next question when match is true" do
    sphinx.check_answer("man")
    expect(sphinx.check_answer("teapot")).to(eq("Correct! Next question... "))
  end

  it "lets user enter Thebes after third correct answer" do
    expect(sphinx.check_answer("teeth")).to(eq("Welcome! The ancient treasure of Thebes is yours!"))
  end

  it "resets counts after user enters Thebes" do
    expect(sphinx.ask_question).to(eq("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?"))
  end
end
