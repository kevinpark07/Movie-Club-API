class ReviewSerializer < ActiveModel::Serializer
    attributes :description, :rating, :movie, :club

    belongs_to :movie
    belongs_to :club
end