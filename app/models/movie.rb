class Movie < ApplicationRecord
    has_many: :clubs
    has_many: :reviews
end
