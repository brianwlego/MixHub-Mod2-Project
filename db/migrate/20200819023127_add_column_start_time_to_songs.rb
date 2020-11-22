class AddColumnStartTimeToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :start_time, :string
  end
end
