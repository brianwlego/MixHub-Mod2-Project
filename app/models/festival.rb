class Festival < ApplicationRecord
    has_many :tracklists
    has_many :songs, through: :tracklists
end
