class UserSerializer < ActiveModel::Serializer
    attributes :name, :age, :profile_image, :email

    has_many :members
    has_many :clubs, through: :members
end