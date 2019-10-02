class Group < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :city ],
    # associated_against: {
    #   tags_list: [ :first_name, :last_name ]
    # },
    using: {
      tsearch: { prefix: true }
    }
end
