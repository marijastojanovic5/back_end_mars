class MarsCard < ApplicationRecord
    has_many :favorites
    has_many :comments
    has_many :users, through: :favorites


    def self.names
        MarsCard.all.map do |card|
            card.name
        end.uniq
    end
    
end
