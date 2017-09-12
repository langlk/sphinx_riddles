require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('lib/**/*.rb')
require './lib/sphinx'

riddle1 = Riddle.new("What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?", "man")
riddle2 = Riddle.new("What starts with a t, ends with a t, and has t in it?", "teapot")
riddle3 = Riddle.new("Thirty white horses on a red hill<br>First they champ<br>Then they stamp<br>Then they stand still.", "teeth")
riddle4 = Riddle.new("What always ends everything?", "g")
riddle5 = Riddle.new("What has four fingers and a thumb, but is not living?", "glove")
riddle6 = Riddle.new("I have keys but no locks.<br>I have a space but no room.<br>You can enter, but can't go outside.<br>What am I?", "keyboard")
sphinx = Sphinx.new([riddle1, riddle2, riddle3, riddle4, riddle5, riddle6])

get('/') do
  @riddle = sphinx.ask_question
  erb(:input)
end

post('/output') do
  response = params["response"]
  @result = sphinx.check_answer(response)
  erb(:output)
end
