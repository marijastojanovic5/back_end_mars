class FavoritesController < ApplicationController
    def create
          
        favorite = Favorite.find_or_create_by(user_id: params[:user_id], mars_card_id: params[:mars_card_id])
        render json: favorite.mars_card
    end
    def destroy
       
        user_id=params[:user_id]
        mars_card_id=params[:mars_card_id]
        favors=Favorite.find_by(:user_id=>user_id, :mars_card_id=>mars_card_id)      
        favors.destroy 
       
    end

end
