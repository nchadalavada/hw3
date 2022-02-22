class PlaceController < ApplicationController

    def index
        @places = Place.all
    end
    
    def show
        @place = Place.find(params["name"])
    
    def new
        @place = Place.new
    end
    
    def create
        @place = Place.new(params["name"])
        @place.save
        redirect_to "/place"
    end
  end
end  
