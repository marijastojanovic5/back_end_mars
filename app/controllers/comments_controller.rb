class CommentsController < ApplicationController
def create
    
    comment = Comment.find_or_create_by(user_id: params[:user_id], mars_card_id: params[:mars_card_id],comment: params[:comment])
    render json: { mars_card_id: comment.mars_card, comment: comment.comment} 

end
def destroy
    
    user_id=params[:user_id]
    mars_card_id=params[:mars_card_id]
    comment=params[:comment]
    comment1 = Comment.find_by(:user_id=>user_id, :mars_card_id=>mars_card_id,:comment=> comment)
    comment1.destroy


    
end
    
    
end
