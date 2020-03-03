class Song < ApplicationRecord
    has_many :saved_songs
    has_many :users, through: :saved_songs
end
