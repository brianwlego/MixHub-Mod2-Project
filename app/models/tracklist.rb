class Tracklist < ApplicationRecord
  belongs_to :artist
  belongs_to :festival
  belongs_to :user
  has_many :songs

  def artist_attributes=(artist_attributes)
        artist = Artist.find_or_create_by(name: artist_attributes[:name])
    self.artist = artist
  end

  def festival_attributes=(festival_attributes)
        festival = Festival.find_or_create_by(name: festival_attributes[:name])
    self.festival = festival
  end

end
