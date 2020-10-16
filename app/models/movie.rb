class Movie < ApplicationRecord
    has_many :reviews, :dependent => :destroy
    has_many :clubs, through: :reviews
end
