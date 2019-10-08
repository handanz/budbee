class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniaut
  has_many :user_groups, dependent: :destroy
  has_many :user_meeting, dependent: :destroy
  has_many :groups, through: :user_groups
  has_many :meetings, through: :user_meeting
  has_many :articles, dependent: :destroy
  acts_as_taggable_on :tags
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  before_save :set_default_image, if: :no_image?
  # use this instead of email_changed? for Rails = 5.1.x def will_save_change_to_email?
  def will_save_change_to_email?
    false
  end

  def set_default_image
    self.image = "https://miro.medium.com/max/720/1*W35QUSvGpcLuxPo3SRTH4w.png" if image.nil?
  end

  def no_image?
    image.nil?
  end
end
