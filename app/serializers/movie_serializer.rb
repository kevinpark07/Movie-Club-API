class MovieSerializer < ActiveModel::Serializer
    attributes :id, :title, :year, :description, :director, :image

    has_many :reviews
    has_many :clubs, through: :reviews
end