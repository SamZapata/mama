class CreateAlbumMediaJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :album_media_joins do |t|
      t.integer :album_id
      t.integer :multimedium_id
      t.string :author

      t.timestamps
    end
  end
end
