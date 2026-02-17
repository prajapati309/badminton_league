# frozen_string_literal: true

# Controller to handle player display and creations.
class PlayersController < ApplicationController
  before_action :authorize_player_management!, except: [:index]

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = current_user.players.build(player_params)

    if @player.save
      redirect_to players_path, notice: 'Player created successfully.'
    else
      render :new
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path, notice: 'Player deleted.'
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end

  def authorize_player_management!
    return if current_user.admin? || current_user.coach?

    redirect_to root_path, alert: 'Not authorized.'
  end
end
