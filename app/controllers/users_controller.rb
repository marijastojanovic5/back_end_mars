class UsersController < ApplicationController
    def index
        user = User.find(params[:id])
        render json: user.to_json(
            :include =>{:mars_cards =>
        {:except=>[:created_at, :updated_at]}}
        )
        
    end
end
