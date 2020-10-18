class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :age, :profile_image, :email

    has_many :clubs, through: :members
end