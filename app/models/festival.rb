class Festival < ApplicationRecord
  has_many :tracklists
  has_many :songs, through: :tracklists
  validates :name, :date, :location, presence: true
end
