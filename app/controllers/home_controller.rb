class HomeController < ApplicationController
  def index
    @eatery = Eatery.all
    @ranking = Eatery.joins(:likes).group("likes.eatery_id").order("count(likes.eatery_id) desc").limit(10)
    
    @promotions = Promotion.order("created_at desc").limit(10)
    
    @ricetudies = Ricetudy.order("created_at desc").limit(10)
    
    @comments = Comment.order("created_at desc").limit(10)
      
  end
end
