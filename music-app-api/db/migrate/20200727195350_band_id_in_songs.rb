class BandIdInSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :band_id, :int
  end
end
