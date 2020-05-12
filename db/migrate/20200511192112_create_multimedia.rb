class CreateMultimedia < ActiveRecord::Migration[6.0]
  def change
    create_table :multimedia do |t|
      t.string :name
      t.string :about
      t.string :uri_path
      t.date :capture_date

      t.timestamps
    end
  end
end
