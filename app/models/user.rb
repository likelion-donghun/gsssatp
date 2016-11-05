class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :comments

  has_many :ricetudies

  # User : Promotion => 1:N
  has_many :promotions
  # User : Promotion => M:N
  has_many :liked_promotions, through: :likes, source: :user
    
  # User : Eatery => 1:N
  has_many :eateries
  
  # User : Like => 1:N 
  has_many :likes

  # Eatery : User => M:N
  has_many :liked_eateries, through: :likes, source: :eatery
  
  def is_like(e)
      Like.find_by(user_id: self.id, eatery_id: e.id).present?
  end  
  
  def is_like2(p)
      Like.find_by(user_id: self.id, promotion_id: p.id).present?
  end
  
end
