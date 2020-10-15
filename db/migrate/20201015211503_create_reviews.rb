class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.belongs_to :movie, null: false, foreign_key: true
      t.belongs_to :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
