class Action < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :post
  validates :action, presence: true
end
