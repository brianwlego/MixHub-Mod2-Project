class AddColumnTracklistNumberToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :tracklist_number, :integer
  end
end
