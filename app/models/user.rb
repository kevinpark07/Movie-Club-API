class User < ApplicationRecord
    has_many :messages
    has_many :clubs, through: :messages

end
