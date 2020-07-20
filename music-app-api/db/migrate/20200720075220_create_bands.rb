class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :bandname
      t.integer :user_id
      t.timestamps
    end
  end
end
