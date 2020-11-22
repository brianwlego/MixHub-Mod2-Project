class SongsController < ApplicationController
  before_action :find_song, only: %i[show destroy verify]
  before_action :signed_in, only: [:new]

  def index
    @songs = Song.all
  end

  def show; end

  def new
    @song = Song.new
    @tracklist = Tracklist.find(params[:tracklist_id])
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to new_tracklist_song_path(@song.tracklist)
    else
      flash[:my_errors] = @song.errors.full_messages
      redirect_to new_tracklist_song_path(@song.tracklist)
    end
  end

  def destroy
    saved_tracklist = @song.tracklist
    @song.destroy
    redirect_to new_tracklist_song_path(saved_tracklist)
  end

  def verify
    Verification.create(user_id: current_user.id, song_id: @song.id)
    redirect_to tracklist_path(@song.tracklist)
  end

  private

  def song_params
    params.require(:song).permit(:tracklist_number, :title, :artist_id, :tracklist_id, :verified_count, :artist_name, :start_time)
  end

  def find_song
    @song = Song.find(params[:id])
  end

  def signed_in
    unless current_user
      flash[:my_errors] = 'Please Log In to create a new tracklist'
      redirect_to new_user_session_path
    end
  end
end
