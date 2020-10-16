class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :meeting_time
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
