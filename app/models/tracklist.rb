class Tracklist < ApplicationRecord
  belongs_to :artist
  belongs_to :festival
  belongs_to :user
  has_many :songs

  def artist_attributes=(artist_attributes)  
    if Artist.find_by(name: artist_attributes[:name])
      artist = Artist.find_by(name: artist_attributes[:name])
    else
      artist = Artist.create(name: artist_attributes[:name], img_url: artist_attributes[:img_url])
    end 
    self.artist = artist
  end

  def festival_attributes=(festival_attributes)
    if Festival.find_by(name: festival_attributes[:name])
      festival = Festival.find_by(name: festival_attributes[:name])  
    else
      festival = Festival.create(name: festival_attributes[:name], location: festival_attributes[:location], date: festival_attributes[:date])
    end
    self.festival = festival
  end

end
