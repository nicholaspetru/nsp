class CreateDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :descriptions do |t|
      t.string :type
      t.string :text

      t.timestamps
    end
  end
end
