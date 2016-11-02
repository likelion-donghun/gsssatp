class Comment < ActiveRecord::Base
    #User:Comment => 1:N
    #belongs_to :user, optional: true
    
    #Eatery:Comment => 1:N
    belongs_to :eatery#, optional: true
    
    #Promotion:Comment => 1:N
    belongs_to :promotion
    
    has_many :users
end
