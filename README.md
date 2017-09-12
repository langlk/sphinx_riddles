# Sphinx Riddles

#### _Epicodus Project in Ruby, 9/12/17_

#### By Kelsey Langlois and L. Devin MacKrell

## Description

_A Ruby Script_

## Setup/Installation Requirements

* Clone this repository at: https://github.com/MacKLess/sphinx_riddles.git
* Open app in preferred browser.

## Specifications

* _Program stores a riddle question and answer._
  * Example input: "What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night", "man"
  * Example output: "What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night", "man"
* _Program returns false if user's guess does not match the answer._
  * Example input: "tadpole"
  * Example output: false
* _Program returns true if user's guess matches the answer._
  * Example input: "man"
  * Example output: true
* _Program ignores case when checking user's guess._
  * Example input: "MAN"
  * Example output: true
* _Program takes an array of riddle objects to store in a sphinx's memory._
  * Example input: [riddle1, riddle2, riddle3, riddle4, riddle5, riddle6]
  * Example output: riddle2.answer = "teapot"
* _Program returns correct riddle's question._
  * Example input: riddle1.answer = correct
  * Example output: "What starts with a t, ends with a t, and has t in it."
* _Program checks user input against riddle's answer._
  * Example input: "tyrannosaurus"
  * Example output: false
* _Program returns result when match is false._
  * Example input: "tyrannosaurus"
  * Example output: "You've been strangled by a sphinx!"
* _Program moves on to next question when match is true_
  * Example input: "teapot"
  * Example output: "Correct! Next question...."
* _Program lets user enter Thebes after third correct answer_
  * Example input: "man", "teapot", "teeth"
  * Example output: "Welcome! The ancient treasure of Thebes is yours!"
* _Program chooses a random riddle at each turn._
  * Example output: "What starts with a t, ends with a t, and has t in it?"

## Support and contact details

_Please contact [kels.langlois@gmail.com](mailto:kels.langlois@gmail.com) or [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby

### License

Copyright (c) 2017 **Kelsey Langlois & L. Devin MacKrell**

*This software is licensed under the MIT license.*
