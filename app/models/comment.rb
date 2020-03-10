class Comment < ApplicationRecord
    belongs_to :users
    belongs_to :mars_cards

end
