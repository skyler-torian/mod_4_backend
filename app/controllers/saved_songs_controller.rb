class SavedSongsController < ApplicationController
    def index
    
        savedsongs = User.find_by(name: 'Amia').songs
      
        render json: savedsongs
    end
end
