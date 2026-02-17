require "rails_helper"

RSpec.describe "Create Match", type: :system do
  let!(:admin) do
    User.create!(email: "admin@test.com", password: "password", role: :admin)
  end

  let!(:player1) { Player.create!(name: "Player One", user: admin) }
  let!(:player2) { Player.create!(name: "Player Two", user: admin) }

  it "admin creates a match successfully" do
    driven_by(:rack_test)

    sign_in admin
    visit new_match_path

    select "Player One", from: "Winner"
    select "Player Two", from: "Loser"

    click_button "Save Match"

    expect(page).to have_content("Match recorded successfully.")
  end
end
