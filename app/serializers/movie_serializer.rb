class MovieSerializer < ActiveModel::Serializer
    attributes :title, :year, :description, :director, :image

    has_many :reviews
    has_many :clubs, through: :reviews
end