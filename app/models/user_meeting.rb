class UserMeeting < ApplicationRecord
  belongs_to :user
  belongs_to :meeting

  def unconfirmed?
    confirmed != true
  end
end
 ##validates :meeting, uniqueness: { scope: :user }
