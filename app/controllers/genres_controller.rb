class GenresController < ApplicationController
  def index
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre=Genre.new
    params[:genre].each { |key, value| @genre.send("#{key}=", value) }
    @genre.save

    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    params[:genre].each { |key, value| @genre.send("#{key}=", value) }
    @genre.save

    redirect_to genre_path(@genre)
  end
end
