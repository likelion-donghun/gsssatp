class Eatery < ActiveRecord::Base
    #Eatery:Comment => 1:N
    has_many :comments
    belongs_to :user

end
