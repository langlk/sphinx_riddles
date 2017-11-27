# Sphinx Riddles

#### _Epicodus Project in Ruby, 9/12/17_

#### By Kelsey Langlois and L. Devin MacKrell

## Description

_A Ruby web app where a user must answer the riddles posed by the Sphinx in order to enter Thebes._

## Setup/Installation Requirements

* Clone this repository
* Run ```bundle install``` in the project root.
* Run ```ruby app.rb```
* Open ```localhost:4567``` in your web browser

## Specifications
### Riddle
* _Program stores a riddle question and answer._
  * Example input: "What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night", "human"
  * Example output: "What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night", "human"
* _Program returns false if user's guess does not match the answer._
  * Example input: "tadpole"
  * Example output: false
* _Program returns true if user's guess matches the answer._
  * Example input: "human"
  * Example output: true
* _Program ignores case when checking user's guess._
  * Example input: "HUMAN"
  * Example output: true

### Sphinx  
* _Program takes an array of riddle objects and stores them in a sphinx's memory._
  * Example input: [riddle1, riddle2, riddle3, riddle4, riddle5, riddle6]
  * Example output: [riddle1, riddle2, riddle3, riddle4, riddle5, riddle6]  
* _Program returns correct riddle's question._
  * Example input: sphinx.ask_question
  * Example output: "What starts with a t, ends with a t, and has t in it."
* _Program returns result when match is false._
  * Example input: "tyrannosaurus"
  * Example output: "You've been strangled by a sphinx!"
* _Program resets count when match is false._
  * Example input: "tyrannosaurus"
  * Example output: @riddle_count = 0
* _Program moves on to next question when match is true_
  * Example input: "teapot"
  * Example output: "Correct! Next question...."
* _Program lets user enter Thebes after third correct answer_
  * Example input: "human", "teapot", "teeth"
  * Example output: "Welcome! The ancient treasure of Thebes is yours!"
* _Program resets count after user enters Thebes_
  * Example input: "human", "teapot", "teeth"
  * Example output: @riddle_count = 0
* _Program chooses a random riddle at each turn._
  * Example output: "What starts with a t, ends with a t, and has t in it?"
* _Program does not select duplicate questions in a single round._
  * Example output: riddle1, riddle5, riddle 3


## Support and contact details

_Please contact [kels.langlois@gmail.com](mailto:kels.langlois@gmail.com) or [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby

### License

Copyright (c) 2017 **Kelsey Langlois & L. Devin MacKrell**

*This software is licensed under the MIT license.*
