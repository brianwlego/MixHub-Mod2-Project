class RemoveLikesFromTracklists < ActiveRecord::Migration[6.0]
  def change
    remove_column :tracklists, :likes, :integer
  end
end
