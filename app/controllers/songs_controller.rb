class SongsController < ApplicationController
    def index
        songs = Song.all
        render json: songs
    end

    def show
        song = Song.find(params[:id])
        render json: song
    end

    def create
        song = Song.find_or_create_by(song_params)
        
        likesong = SavedSong.find_or_create_by(user_id: 7, song_id: song.id)
        render json: [song, likesong]
    end 

    private

    def song_params
        params.require(:song).permit(:title,:artist,:duration,:album,:cover_art,:link)
    end


    



end
