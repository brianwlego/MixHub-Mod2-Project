class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
    @tracklist = Tracklist.find(params[:tracklist_id])
  end

  def create
    @song = Song.create(song_params)

    
    redirect_to new_tracklist_song_path(@song.tracklist)
  end
  
  def edit
  end

  def update
    # Add Validation
    
    @song.update(tracklist_params(:artist, :title))
    redirect_to song_path(@song)
  end

  def destroy 
    saved_tracklist = song.tracklist
    @song.destroy
    redirect_to tracklist_path(saved_tracklist)
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_id, :tracklist_id, :verified_count, :artist_name, :start_time)
  end

  def find_song
    @song = Song.find(params[:id])
  end


end