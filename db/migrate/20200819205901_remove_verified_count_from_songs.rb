class RemoveVerifiedCountFromSongs < ActiveRecord::Migration[6.0]
  def change
    remove_column :songs, :verified_count, :integer
  end
end
