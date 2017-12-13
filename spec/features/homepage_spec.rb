feature "homepage content" do
  scenario "load page" do
    visit('/')
    click_link "Single Player"

    expect(page).to have_content "Play Rock Paper Scissors Please enter your name to play"
    expect(page).to have_button "Play"
  end
end
