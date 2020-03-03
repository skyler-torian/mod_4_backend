class SavedSongsController < ApplicationController
    def index
    
        savedsongs = User.find(7).songs
      
        render json: savedsongs
    end
end
