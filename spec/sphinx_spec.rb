require 'sphinx'
require 'rspec'

describe("Sphinx") do
  it "stores 3 riddles and answers" do
    riddle1 = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "man")
    riddle2 = Riddle.new("What starts with a t, ends with a t, and has t in it?", "teapot")
    riddle3 = Riddle.new("Thirty white horses on a red hill\nFirst they champ\nThen they stamp\nThen they stand still.", "teeth")
    sphinx = Sphinx.new(riddle1, riddle2, riddle3)
    expect(sphinx.ask_question).to(eq("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?"))
  end
end
