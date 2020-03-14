class FavoritesController < ApplicationController
    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end
    private
    def favorite_params
        params.require(:favorite).permit(:user_id, :mars_card_id)
    end
end
