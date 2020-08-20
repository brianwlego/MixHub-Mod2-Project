class Song < ApplicationRecord
  belongs_to :tracklist
  has_many :verifications
  validates :title, :tracklist_number, :start_time, :artist_name,   presence: true
  validates :start_time, format: { without: /\A[a-zA-Z]+\z/,
    message: "only allows numbers" }
  validates :tracklist_number, :start_time, uniqueness: {scope: :tracklist_id}

  def verified?(user)
    !!self.verifications.find{|verification| verification.user_id == user.id}
  end
end
