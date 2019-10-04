class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniaut
  has_many :user_groups, dependent: :destroy
  has_many :user_meeting, dependent: :destroy
  has_many :groups, through: :user_groups
  has_many :meetings, through: :user_meeting
  acts_as_taggable_on :tags
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  # use this instead of email_changed? for Rails = 5.1.x
  def will_save_change_to_email?
    false
  end
end
