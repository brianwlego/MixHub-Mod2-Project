class Tracklist < ApplicationRecord

  belongs_to :artist
  belongs_to :festival
  belongs_to :user
  has_many :songs, dependent: :delete_all
  has_many :likes, dependent: :delete_all
  validates :name, :img_url, :user_id, presence: true
  validates :name, uniqueness: true
  validates_associated :artist, :festival
  

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

  def self.recent_tracklists
    self.all.last(5)
  end

  def order_by_tracklist_number
      self.songs.sort_by {|song| song.tracklist_number}
  end

  def first_three_songs
    self.order_by_tracklist_number.first(3)
  end

  
  
  # if self.likes.include?(current_user) && @likes.include?(@tracklist)

  def liked?(user)
    !!self.likes.find{|like| like.user_id == user.id}
  end
    
end
