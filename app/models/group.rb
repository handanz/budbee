class Group < ApplicationRecord
  include PgSearch::Model
  has_many :meetings
  has_many :users, through: :user_groups
  acts_as_taggable_on :tags
  pg_search_scope :global_search,
    against: [:name, :description, :city],
    using: {
      tsearch: { prefix: true }
    }
end
