class UsersController < ApplicationController
    

    def show
        user = User.find(params[:id])
        render json:  { user: user, favorites: user.mars_cards }

    end

    def create
        user= User.create(name: params["name"],username: params["username"])
        if user.valid? 
            render json:  { user: user, favorites: user.mars_cards }
        else     
            render json: {
               message:   user.errors.full_messages
            }
        end

    end
    def login_create
       
        user = User.find_by(username: params[:username])
        render json:  { user: user, favorites: user.mars_cards }
      
    end
    
   
end
