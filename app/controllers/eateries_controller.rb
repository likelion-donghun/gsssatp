class EateriesController < ApplicationController
    def index
        @eateries = Eatery.paginate(:page => params[:page], :per_page => 10)
    end

    def new
        @eatery = Eatery.new
    end

    def create
        @eatery = Eatery.new(eatery_params)
        @eatery.user=current_user
        @eatery.save
    
        redirect_to eatery_path(@eatery)
        
    end
    
    def show
        @eatery = Eatery.find(params[:id])

    end

    def edit
        @eatery = Eatery.find(params[:id])
    end

    def update
        @eatery = Eatery.find(params[:id])    
        @eatery.update(eatery_params)
        redirect_to eatery_path(@eatery)
    end

    def destroy
        @eatery = Eatery.find(params[:id])
        @eatery.destroy
        
        redirect_to eateries_path
    end
    
    private
    def eatery_params
        params.require(:eatery).permit(:style, :name, :callnumber, :openhour)    
    end



end
