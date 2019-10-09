class Article < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  pg_search_scope :global_search,
    against: [:title, :content],
    using: {
      tsearch: { prefix: true }
    }
  acts_as_taggable_on :tags
end

  # pg_search_scope :search_by_weight,
  #     :against => {
  #     :title => 'B',
  #     :content => 'C'
  #   },
  #   :associated_against => {
  #     :tags => { :name => 'A' }
  #   },
