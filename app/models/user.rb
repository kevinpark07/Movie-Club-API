class User < ApplicationRecord
    has_many :members, :dependent => :destroy
    has_many :clubs, through: :members
    has_many :messages, :dependent => :destroy

end
