class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :songtitle
      t.timestamps
    end
  end
end
