class AddAttachmentVideoToSongs < ActiveRecord::Migration[6.0]
  def self.up
    change_table :songs do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :songs, :video
  end
end
