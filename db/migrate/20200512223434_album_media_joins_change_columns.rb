class AlbumMediaJoinsChangeColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :album_media_joins, :author, :adjective
  end
end
