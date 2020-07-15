class GenresController < ApplicationController
#display each of the song's genre and genre and link to respective genre and genre show pages
def new
    @genre = Genre.new
end

def edit
    @genre = Genre.find(params[:id])
  end

def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def show
      @genre = Genre.find(params[:id])
  end

end
