class CuisinePreferencesController < ApplicationController
    def new
        cuisine_preference = CuisinePreference.new(cuisine_preference_params)
        render json: cuisine.to_json(:include => {
            :cuisines => {:only => [:type]}
        })
    end

    def index
        cuisine_preferences = CuisinePreference.all
    end
    
    def create
        cuisine_preference = CuisinePreference.create(cuisine_preference_params)
        render json: {status: 'cuisine created!'}
    end

    def destroy
    end

    def cuisine_preference_params
        params.require(:cuisine_preference).permit(:user_id, :cuisine_id)
    end


end