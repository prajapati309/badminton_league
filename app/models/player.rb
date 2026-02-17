# frozen_string_literal: true

# handles players validation and associations
class Player < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

  has_many :won_matches,
           class_name: 'Match',
           foreign_key: :winner_id,
           dependent: :destroy

  has_many :lost_matches,
           class_name: 'Match',
           foreign_key: :loser_id,
           dependent: :destroy

  def wins_count
    won_matches.count
  end

  def losses_count
    lost_matches.count
  end
end
