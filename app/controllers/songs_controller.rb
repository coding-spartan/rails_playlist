class SongsController < ApplicationController

    def allsongs
        @songs = Song.all
        @user = User.find(current_user.id)
    end
    
    
    def newsong
        @song = User.find(current_user.id).songs.new(song_params)
        unless @song.save
            flash[:errors] = @song.errors.full_messages
        end
        redirect_to "/users/#{current_user.id}/allsongs"
    end
    
    def song_info
        @current_song = Song.find(params[:song_id])
        
    end
    
    def add
        User.find(current_user.id).adds.create(song:Song.find(params[:song_id]))
        redirect_to "/users/#{current_user.id}/allsongs"
    end
  
    def playlist

    end

    
    private
    def song_params
        params.require(:song).permit(:artist, :title)
    end  
    
    
    end