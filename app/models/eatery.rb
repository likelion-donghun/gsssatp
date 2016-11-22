class Eatery < ActiveRecord::Base
    
    resourcify
    
  include Authority::Abilities

   mount_uploader :image, AvatarUploader
   
    #Eatery:Comment => 1:N
    has_many :comments
    
    belongs_to :user, required: false
    
    # Eatery : Promotion => 1:N
    has_many :promotions
    
    # Eatery : Like => 1:N
    has_many :likes

    # Eatery : User => M:N
    has_many :liked_users, through: :likes, source: :user
    
    searchable do
        text :menu, :boost => 5
        text :style
        text :name#,:publish_month
        text :comments do
            comments.map(&:eatery)
        end
        #time :published_at
        #string :publish_month
end
    
end
