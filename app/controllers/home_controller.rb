class HomeController < ApplicationController
  def index
    @eatery = Eatery.all
    @ranking = Eatery.joins(:likes).group("likes.eatery_id").order("count(likes.eatery_id) desc")
    
  end
end
