class User < ApplicationRecord
  
  has_many :posts
  has_many :actions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
