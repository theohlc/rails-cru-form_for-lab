class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end

  def new
    @song = Song.new
  end

  def create
    @song=Song.new
    params[:song].each { |key, value| @song.send("#{key}=", value) }
    @song.save

    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    params[:song].each { |key, value| @song.send("#{key}=", value) }
    @song.save

    redirect_to song_path(@song)
  end
end
