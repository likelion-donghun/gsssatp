class Promotion < ActiveRecord::Base
    #Promotion:Comment => 1:N
    has_many :comments
    #User:Promotion => 1:N
    belongs_to :user
    #Promotion:Like => 1:N
    has_many :likes
    
    #User:Promotion => M:N
    has_many :liked_user, through: :likes, source: :user

end
