class Tracklist < ApplicationRecord
  belongs_to :artist
  belongs_to :festival
  belongs_to :user

end
