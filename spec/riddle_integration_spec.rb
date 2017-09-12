require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('sphinx riddles', {:type => :feature}) do
  riddles = {
    "What animal walks on 4 legs in the morning, 2 legs during the day, and 3 legs at night?" => "man",
    "What starts with a t, ends with a t, and has t in it?" => "teapot",
    "Thirty white horses on a red hill" => "teeth",
    "What always ends everything?" => "g",
    "What has four fingers and a thumb, but is not living?" => "glove",
    "I have keys but no locks." => "keyboard"
  }

  it "tells user they've been strangled when answer is wrong" do
    visit('/')
    fill_in('response', :with => 'I am so leet.')
    click_button('Submit!')
    expect(page).to have_content("You've been strangled by a sphinx!")
  end
  
  it "tells user they're correct and prompts new question" do
    visit('/')
    fill_in('response', :with => 'I am so leet.')
    click_button('Submit!')
    expect(page).to have_content("You've been strangled by a sphinx!")
  end
end
