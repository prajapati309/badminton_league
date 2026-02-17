# frozen_string_literal: true

## Controller to handle leaderboard display.
# Shows player rankings based on wins and losses.
class LeaderboardController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @players = Player.all.sort_by { |p| -p.wins_count }
  end
end
