class User < ApplicationRecord
    has_many :favorites
    has_many :comments
    has_many :mars_cards, through: :favorites
   
end
