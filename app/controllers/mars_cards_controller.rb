class MarsCardsController < ApplicationController

    def index
        all_mars_cards=MarsCard.all
        render json: all_mars_cards.to_json(
             :include=>{:users=>
        {:except => [:created_at, :updated_at]}})

    end
    def  show
        mars_card=MarsCard.find(params[:id])
        render json: mars_card.to_json(
            :include=>{:comments=>
            {:include =>:user}})   
    end
    # def favorites
       
    #      favorite = Favorite.find_or_create_by(user_id: params[:user_id], mars_card_id: params[:mars_card_id])
    #      render json: favorite
    # end



    

    

end
