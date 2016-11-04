class Promotion < ActiveRecord::Base
    #Promotion:Comment => 1:N
    has_many :comments
    belongs_to :user

end
