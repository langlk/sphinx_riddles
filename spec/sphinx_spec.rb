require 'sphinx'
require 'rspec'

describe("Sphinx") do
  riddle1 = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "man")
  riddle2 = Riddle.new("What starts with a t, ends with a t, and has t in it?", "teapot")
  riddle3 = Riddle.new("Thirty white horses on a red hill\nFirst they champ\nThen they stamp\nThen they stand still.", "teeth")
  sphinx = Sphinx.new(riddle1, riddle2, riddle3)

  it "stores 3 riddles and answers" do
    expect(sphinx.ask_question).to(eq("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?"))
  end

  it "returns correct riddle's question" do
    sphinx.check_answer("man")
    expect(sphinx.ask_question).to(eq("What starts with a t, ends with a t, and has t in it?"))
  end

  it "checks user input against riddle's answer" do
    expect(sphinx.check_answer("tyrannosaurus")).to(eq(false))
  end
end
