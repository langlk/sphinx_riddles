#!/usr/bin/env ruby

class Riddle
  attr_reader(:question, :answer)
  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def guess?(response)
    return false
  end
end
