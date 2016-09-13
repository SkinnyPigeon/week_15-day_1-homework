class User < ActiveRecord::Base
  has_many :favourites
  has_many :shows, through: :favourites
end
