class Meeting < ApplicationRecord
  belongs_to :group
  has_many :user_meetings, dependent: :destroy
  has_many :users, through: :user_meetings, dependent: :destroy
end
