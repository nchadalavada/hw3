class PlaceController < ApplicationController
    def index
        @places = Place.all
    end
    
    def show
        @place = Place.find(params["id"])
    
    def New
        @place = Place.New
    end        
    
    def create
        @place = Place.new(params["place"])
        @place.save
        redirect_to "/place"
    
    
    def edit
        @place = Place.find(params["id"])
    end
            
            def update
                @place= Place.find(params["id"])
                @place.update(params["place"])
                redirect_to "/place"
            end
            
            def destroy
                @place = Place.find(params["id"])
                @place.destroy
                redirect_to "/place"
            end
            
            end
end
end
