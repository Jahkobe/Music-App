class AddAttachmentPhotoToSongs < ActiveRecord::Migration[6.0]
  def self.up
    change_table :songs do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :songs, :photo
  end
end
