class AuthController < ApplicationController

    
    def create
        user = User.create(params.require(:user).permit!)
        render json: user
    end


end