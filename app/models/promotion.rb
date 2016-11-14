class Promotion < ActiveRecord::Base
     resourcify
  include Authority::Abilities

    
    #Promotion:Comment => 1:N
    has_many :comments
    #User:Promotion => 1:N
    belongs_to :user
    #Promotion:Like => 1:N
    has_many :likes
    
    # Eatery : Promotion => 1:N
    belongs_to :eatery
    
    #User:Promotion => M:N
    has_many :liked_user, through: :likes, source: :user

end
