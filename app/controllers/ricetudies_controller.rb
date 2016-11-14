class RicetudiesController < ApplicationController
    def index
        @ricetudies = Ricetudy.paginate(:page => params[:page], :per_page => 10)
    end
    
    def new
        @ricetudy = Ricetudy.new
    
    end
    
    def create
        @ricetudy = Ricetudy.new(ricetudy_params)
        @ricetudy.user = current_user
        @ricetudy.save
        redirect_to ricetudies_path
    end
    
    def show
        @ricetudy = Ricetudy.find(params[:id])
    end
    
    def edit
        @ricetudy = Ricetudy.find(params[:id])
        authorize_action_for @ricetudy
    end
    
    def update
        @ricetudy = Ricetudy.find(params[:id])
        authorize_action_for @ricetudy
        @ricetudy.update(ricetudy_params)
        redirect_to ricetudy_path(@ricetudy)
    end
    
    def destroy
        @ricetudy = Ricetudy.find(params[:id])
        authorize_action_for @ricetudy
        @ricetudy.destroy
        redirect_to ricetudies_path
    end
    
    private
    def ricetudy_params 
    params.require(:ricetudy).permit(:title, :eatery, :start, :end_at, :content, :contact, :image)
    end
    
end
