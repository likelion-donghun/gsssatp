class HomeController < ApplicationController
  def index
    @search = Eatery.search do
    fulltext params[:search]
    end
  
    @eateries = @search.results
  end
end
