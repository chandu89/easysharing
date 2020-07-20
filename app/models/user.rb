# User model is used deal with your user related changes
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :movies, dependent: :destroy
end
