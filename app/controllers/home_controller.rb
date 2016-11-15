class HomeController < ApplicationController
  def index
    @eatery = Eatery.all
  end
end
