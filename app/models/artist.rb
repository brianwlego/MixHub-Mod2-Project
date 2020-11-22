class Artist < ApplicationRecord
  has_many :tracklists
  has_many :songs, through: :tracklists
  validates :name, presence: true
  validates :name, uniqueness: true

  def self.alphabetical
    all.sort_by { |artist| artist.name }
  end
end
