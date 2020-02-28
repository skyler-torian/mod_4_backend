class User < ApplicationRecord
    has_many :saved_songs
    has_many :songs, through: :saved_songs
end
