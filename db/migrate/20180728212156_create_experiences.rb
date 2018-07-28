class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :label
      t.string :location
      t.date :start_date
      t.string :position
      t.date :end_date

      t.timestamps
    end
  end
end
