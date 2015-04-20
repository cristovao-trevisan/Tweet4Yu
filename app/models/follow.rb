class Follow < ActiveRecord::Base
  belongs_to :user
  belongs_to  :friend, class_name: 'User'
  
  validates :user, presence: true
  validates :friend, presence: true, uniqueness: { scope: :user}
  validate :not_friend_of_yourself
  
  def not_friend_of_yourself
    if user == friend
      errors.add(:follow, "Can't be friend of yourself")
    end
  end
end
