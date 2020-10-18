class Club < ApplicationRecord
  has_many :reviews, :dependent => :destroy;
  has_many :messages, :dependent => :destroy;
  has_many :members, :dependent => :destroy;
  has_many :users, through: :members;
  has_many :movies, through: :reviews;
end
