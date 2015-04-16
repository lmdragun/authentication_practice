class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :name
      t.string :writer
      t.string :artist
      t.integer :year
      t.string :img_url
      t.string :company
      t.timestamps
      t.references :user
      t.integer :user_id
    end
  end
end
