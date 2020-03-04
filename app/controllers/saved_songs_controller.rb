class SavedSongsController < ApplicationController
    def show
        
        savedsongs = User.find(params[:id]).songs
      
        render json: savedsongs
    end
end
