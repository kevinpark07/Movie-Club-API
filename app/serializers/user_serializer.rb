class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :password, :name, :age, :profile_image, :email

    has_many :clubs, through: :members
end