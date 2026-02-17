# frozen_string_literal: true

class Match < ApplicationRecord
  belongs_to :winner, class_name: 'Player'
  belongs_to :loser,  class_name: 'Player'

  validates :winner_id, presence: true
  validates :loser_id, presence: true
  validate  :players_must_be_different

  private

  def players_must_be_different
    return if winner_id.blank? || loser_id.blank?

    return unless winner_id == loser_id

    errors.add(:base, 'Winner and loser cannot be the same player')
  end
end
