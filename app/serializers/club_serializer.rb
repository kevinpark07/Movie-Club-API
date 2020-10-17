class ClubSerializer < ActiveModel::Serializer
    attributes :id, :name, :meeting_time, :description, :image

    has_many :reviews
    has_many :messages
    has_many :members
    has_many :users, through: :members
    has_many :movies, through: :reviews
end
