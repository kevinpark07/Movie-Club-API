class MessageSerializer < ActiveModel::Serializer
    attributes :content, :club, :user

    belongs_to :club
    belongs_to :user
end