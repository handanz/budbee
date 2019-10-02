class Group < ApplicationRecord
  acts_as_taggable_on :tags
  has_many :meetings
end
