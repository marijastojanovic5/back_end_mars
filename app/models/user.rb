class User < ApplicationRecord
    has_many :favorites
    has_many :comments
    has_many :mars_cards, through: :favorites
    validates :username, uniqueness: { case_sensitive: false }
   
end
