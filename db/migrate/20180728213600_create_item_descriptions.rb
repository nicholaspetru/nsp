class CreateItemDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :item_descriptions do |t|
      t.references :photo, foreign_key: true
      t.references :experience, foreign_key: true
      t.references :description, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
