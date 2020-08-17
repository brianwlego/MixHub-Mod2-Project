class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.belongs_to :tracklist
      t.belongs_to :artist
      t.integer :verified_count
      t.string :artist_name

      t.timestamps
    end
  end
end
