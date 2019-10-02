class Group < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :city ],
    using: {
      tsearch: { prefix: true }
    }
end
