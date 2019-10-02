class Meeting < ApplicationRecord
  belongs_to :group
  acts_as_taggable_on :tags
end
