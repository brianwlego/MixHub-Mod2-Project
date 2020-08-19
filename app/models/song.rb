class Song < ApplicationRecord
  belongs_to :tracklist
  validates :title, :tracklist_number, :start_time, :artist_name,   presence: true
  validates :start_time, format: { without: /\A[a-zA-Z]+\z/,
    message: "only allows numbers" }
  validates :tracklist_number, :start_time, uniqueness: true

  def add_verification
    self.verified_count += 1
  end

end
