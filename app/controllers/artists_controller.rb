require 'pry'
class ArtistsController < ApplicationController
  def index
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist=Artist.new
  end

  def create
    @artist=Artist.new
    params[:artist].each { |key, value| @artist.send("#{key}=", value) }
    @artist.save

    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    params[:artist].each { |key, value| @artist.send("#{key}=", value) }
    @artist.save

    redirect_to artist_path(@artist)
  end
end
