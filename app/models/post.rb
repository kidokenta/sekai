class Post < ApplicationRecord
  belongs_to :user
  has_many :actions
  accepts_nested_attributes_for :actions, allow_destroy: true
end
