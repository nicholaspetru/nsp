class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :label
      t.string :location
      t.string :path
      t.date :photo_date

      t.timestamps
    end
  end
end
