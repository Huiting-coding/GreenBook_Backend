class Item < ApplicationRecord
    # belongs_to :category
  belongs_to :user
  has_many :requests
  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
end
