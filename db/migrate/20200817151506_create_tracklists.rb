class CreateTracklists < ActiveRecord::Migration[6.0]
  def change
    create_table :tracklists do |t|
      t.string :name
      t.belongs_to :artist
      t.belongs_to :festival
      t.belongs_to :user
      t.text :link
      t.text :img_url
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
