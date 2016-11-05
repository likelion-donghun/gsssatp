class LikesController < ApplicationController
    before_action :authenticate_user!
    
        def like_toggle
        like =  Like.find_by(user_id: current_user.id, eatery_id: params[:eatery_id])
        if like.nil?
            Like.create(user_id: current_user.id, eatery_id: params[:eatery_id])
        else
            like.destroy        
        end
        redirect_to :back
        end

        def like_toggle2
        like2 = Like.find_by(user_id: current_user.id, promotion_id: params[:promotion_id])
        if like2.nil?
            Like.create(user_id: current_user.id, promotion_id: params[:promotion_id])
        else
            like2.destroy
        end
        redirect_to :back        
        end
end
