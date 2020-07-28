class AddAttachmentMusicToSongs < ActiveRecord::Migration[6.0]
  def self.up
    change_table :songs do |t|
      t.attachment :music
    end
  end

  def self.down
    remove_attachment :songs, :music
  end
end
