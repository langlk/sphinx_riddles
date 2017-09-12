#!/usr/bin/env ruby

require 'rspec'
require 'riddle'

describe('Riddle') do
  it "stores a riddle question and answer" do
    riddle = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "man")
    expect(riddle.question).to(eq("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?"))
    expect(riddle.answer).to(eq("man"))
  end
end
