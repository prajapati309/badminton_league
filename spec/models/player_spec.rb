# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Player, type: :model do
  let!(:user) do
    User.create!(email: 'admin@test.com', password: 'password', role: :admin)
  end

  it 'is invalid without name' do
    player = Player.new(user: user)
    expect(player).not_to be_valid
  end

  it 'allows duplicate names for players' do
    Player.create!(name: 'Duplicate Player', user: user)
    duplicate = Player.new(name: 'Duplicate Player', user: user)
    expect(duplicate).to be_valid
  end
end
