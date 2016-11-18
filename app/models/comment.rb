class Comment < ActiveRecord::Base
    resourcify
  include Authority::Abilities
    mount_uploader :image, AvatarUploader
       
    #User:Comment => 1:N
    #belongs_to :user, optional: true
    
    #Eatery:Comment => 1:N
    belongs_to :eatery#, optional: true
    
    #Promotion:Comment => 1:N
    belongs_to :promotion
    
    #Ricetudy:Comment => 1:N
    belongs_to :ricetudy
    
    belongs_to :user
end
