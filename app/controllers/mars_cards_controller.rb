class MarsCardsController < ApplicationController

    def index
        all_mars_cards=MarsCard.all
        render json: all_mars_cards.to_json(
        {:except => [:created_at, :updated_at]})

    end

end
