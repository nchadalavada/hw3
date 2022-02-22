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
        @place = Place.new(params["place"])
        @place.save
        redirect_to "/place"
    end

    def edit
        @place = Place.find(params["name"])
      end
    
      def update
        @place = Place.find(params["name"])
        @place.update(params["Place"])
        redirect_to "/place"
      end
    
      def destroy
        @place = Place.find(params["name"])
        @place.destroy
        redirect_to "/place"
      end
end
end    
