class LeaderboardController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @players = Player.all.sort_by { |p| -p.wins_count }
  end
end
