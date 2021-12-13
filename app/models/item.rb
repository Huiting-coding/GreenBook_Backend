class Item < ApplicationRecord
    belongs_to :category
    belongs_to :user
    validates :name, presence: true
    validates :category, presence: true
    validates :description, presence: true
end
