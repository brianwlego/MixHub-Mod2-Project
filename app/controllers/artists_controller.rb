class ArtistsController < ApplicationController
  def index
    @artists = Artist.alphabetical
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
