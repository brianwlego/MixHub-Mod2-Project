class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tracklist
  validates :user_id, uniqueness: { scope: :tracklist_id }
end
