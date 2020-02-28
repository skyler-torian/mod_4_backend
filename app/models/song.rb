class Song < ApplicationRecord
    has_many :saved_songs
    has_many :users, through: :savedsongs
end
