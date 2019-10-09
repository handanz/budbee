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

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following

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

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def is_following?(user_id)
    relationship = Follow.find_by(follower_id: id, following_id: user_id)
    return true if relationship
  end
end
