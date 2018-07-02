class AddPlaylistsToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :playlist_id, :integer
  end
end
