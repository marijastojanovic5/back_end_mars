class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :mars_card

end
