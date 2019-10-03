class Meeting < ApplicationRecord
  belongs_to :group
  has_many :users, through: :user_meetings
end
