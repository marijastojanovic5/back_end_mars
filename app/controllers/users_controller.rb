class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json:  { user: user, favorites: user.mars_cards }

       
        
    end
    def login_create
       
        user = User.find_by(username: params[:username])
        render json:  { user: user, favorites: user.mars_cards }
      
    end
    
   
end
