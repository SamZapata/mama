class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.date :since_date
      t.date :till_date
      t.string :author

      t.timestamps
    end
  end
end
