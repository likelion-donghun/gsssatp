class EateriesController < ApplicationController
    def index
        @search = Eatery.search do
        fulltext params[:search]
        end
        
        if params[:search].present? 
            @eateries = @search.results
        else
            @eateries = Eatery.paginate(:page => params[:page], :per_page => 28)
        end
        #@eateries = @search.results
        
        #@eateries = Eatery.paginate(:page => params[:page], :per_page => 30)
        #if @search.present?
            #@eateries = @search.results
        #else
            #@eateries = Eatery.paginate(:page => params[:page], :per_page => 30)
        #end
    
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
        authorize_action_for @eatery
    end

    def update
        @eatery = Eatery.find(params[:id])    
        authorize_action_for @eatery
        @eatery.update(eatery_params)
        redirect_to eatery_path(@eatery)
    end

    def destroy
        @eatery = Eatery.find(params[:id])
        authorize_action_for @eatery
        @eatery.destroy
        
        redirect_to eateries_path
    end
    
    private
    def eatery_params
        params.require(:eatery).permit(:style, :name, :callnumber, :openhourm, :menu)    
    end



end
