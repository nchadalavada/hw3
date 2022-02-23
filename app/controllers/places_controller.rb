class PlacesController < ApplicationController

    def index
        @places = Place.all
    end
    
    def show
        @places = Place.find(params["id"])
    
    def new
        @place = Place.new
    end
    
    def create
        @place = Place.new(params["id"])
        @place.save
        redirect_to "/places"
    end
  end
end  