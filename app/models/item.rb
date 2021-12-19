class Item < ApplicationRecord
  acts_as_taggable_on :tags
  belongs_to :user
  has_many :requests
  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :category, :location ],
    associated_against: {
      user: [ :description ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
