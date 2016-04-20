class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.integer :user_id
      t.string :title
      t.string :original_artist
      t.string :cover_artist
      t.string :video_url
      t.string :thumbnail_url
      t.timestamps null: false
    end
  end
end
