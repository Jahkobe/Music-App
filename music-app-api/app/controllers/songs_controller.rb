class SongsController < ApplicationController
    def index
        render json: Song.all
    end

    def show
        render json: Song.find(params[:id])
    end

    def create
        @song = Song.new(song_params)
        
        if @song.save
          render json: @song, status: :created, location: @song
        else
          render json: @song.errors, status: :unprocessable_entity
        end
      end

      def update
        if @song.update(song_params)
          render json: @song
        else
          render json: @song.errors, status: :unprocessable_entity
        end
      end
end