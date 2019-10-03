class Meeting < ApplicationRecord
  belongs_to :group
  has_many :user_meetings
  has_many :users, through: :user_meetings
end
