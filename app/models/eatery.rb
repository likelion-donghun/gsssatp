class Eatery < ActiveRecord::Base
    #Eatery:Comment => 1:N
    has_many :comments
    
    belongs_to :user
    
    # Eatery : Like => 1:N
    has_many :likes

    # Eatery : User => M:N
    has_many :liked_users, through: :likes, source: :user
    
end
