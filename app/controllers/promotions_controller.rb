class PromotionsController < ApplicationController
    def index
        @promotions = Promotion.paginate(:page => params[:page], :per_page => 10)
    end

    def new
        @promotion = Promotion.new
    end

    def create
        @promotion = Promotion.new(promotion_params)
        @promotion.user=current_user
        @promotion.save
        redirect_to promotion_path(@promotion)
    end
    
    def edit
        @promotion = Promotion.find(params[:id])
    end

    def update
        @promotion = Promotion.find(params[:id])
        @promotion.update(promotion_params)
        redirect_to promotion_path(@promotion)
    end
    
    def show
        @promotion = Promotion.find(params[:id])
        
    end

    def destroy
    
    end
    
    private
    def promotion_params
        params.require(:promotion).permit(:name, :content, :image)
    end
    
end
