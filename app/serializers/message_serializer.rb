class MessageSerializer < ActiveModel::Serializer
    attributes :id, :content, :club, :user

    belongs_to :club
    belongs_to :user
end