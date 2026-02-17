require "rails_helper"

RSpec.describe Match, type: :model do
  let!(:user) do
    User.create!(email: "owner@test.com", password: "password", role: :admin)
  end

  let!(:player1) { Player.create!(name: "Player One", user: user) }
  let!(:player2) { Player.create!(name: "Player Two", user: user) }

  it "is valid with different winner and loser" do
    match = Match.new(winner: player1, loser: player2)
    expect(match).to be_valid
  end

  it "is invalid when winner and loser are same" do
    match = Match.new(winner: player1, loser: player1)
    expect(match).not_to be_valid
  end

  it "is invalid without winner" do
    match = Match.new(loser: player2)
    expect(match).not_to be_valid
  end

  it "is invalid without loser" do
    match = Match.new(winner: player1)
    expect(match).not_to be_valid
  end
end
