class MovieSerializer < ActiveModel::Serializer
    attributes :id, :title, :year, :description, :director, :image

    has_many :reviews
end