feature "homepage content" do
  scenario "load page" do
    visit('/')

    expect(page).to have_content "Play Rock Paper Scissors Please enter your name to play"
  end
end
