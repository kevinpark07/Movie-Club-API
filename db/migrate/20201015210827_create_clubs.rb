class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.belongs_to :movie, null: false, foreign_key: true
      t.belongs_to :review, null: false, foreign_key: true
      t.datetime :meeting_time

      t.timestamps
    end
  end
end
