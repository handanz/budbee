class UserMeeting < ApplicationRecord
  validates :meeting, uniqueness: { scope: :user }

  belongs_to :user
  belongs_to :meeting

  def unconfirmed?
    confirmed != true
  end
end
