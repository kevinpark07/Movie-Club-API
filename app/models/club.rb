class Club < ApplicationRecord
  belongs_to :movie
  has_many :messages
  has_many :users, through: :messages
end
