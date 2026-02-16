class MatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_match_recording!

  def index
    @matches = Match.includes(:winner, :loser).order(created_at: :desc)
  end

  def new
    @match = Match.new
    @players = Player.all
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      redirect_to matches_path, notice: "Match recorded successfully."
    else
      @players = Player.all
      render :new, status: :unprocessable_entity
    end
  end

  private

  def match_params
    params.require(:match).permit(:winner_id, :loser_id)
  end

  def authorize_match_recording!
    unless current_user.admin? || current_user.referee?
      redirect_to root_path, alert: "Not authorized."
    end
  end
end
