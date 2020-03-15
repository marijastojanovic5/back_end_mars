class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user.to_json(
                  :include =>{:mars_cards =>
            {:except=>[:created_at, :updated_at]}}
        )
        
    end
    def login_create
        user = User.find_by(username: params[:username])
        render json: user.to_json(
            :include=>{:favorites=>
            {:except => [:created_at, :updated_at]}})
      
    end
    
   
end
