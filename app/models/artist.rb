class Artist < ApplicationRecord
    has_many :tracklists 
    has_many :songs, through: :tracklists

    def artist_attributes=(artist_attributes)
        byebug
        artist_attributes.values.each do |artist_attribute|
            artist = Artist.find_or_create_by(name: artist_attribute[:name])
        end
    end
end
