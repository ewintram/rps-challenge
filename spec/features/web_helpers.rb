def sign_in_and_play
  visit('/')
  click_link "Single Player"
  fill_in :player1_name, with: "Ellie"
  click_button "Play"
end

def player_choose_rock
  choose("Rock")
  click_button("Go")
end

def player_choose_paper
  choose("Paper")
  click_button("Go")
end

def player_choose_scissors
  choose("Scissors")
  click_button("Go")
end
