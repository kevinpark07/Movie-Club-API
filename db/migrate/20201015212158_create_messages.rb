class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end



the_dark_knight_club = Club.create!(name: "The Dark Knight Club")
midsommar_club = Club.create!(name: "Midsommar Club")
mad_max_club = Club.create!(name: "Mad Max: Fury Road Club")
parasite_club = Club.create!(name: "Parasite Club")
the_social_network_club = Club.create!(name: "The Social Network Club")
inception_club = Club.create!(name: "Inception Club")
the_irishman_club = Club.create!(name: "The Irishman Club")
the_big_short_club = Club.create!(name: "The Big Short Club")
joker_club = Club.create!(name: "Joker Club")