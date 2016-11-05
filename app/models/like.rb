class Like < ActiveRecord::Base

    belongs_to :user
    belongs_to :eatery
    belongs_to :promotion
    
end
