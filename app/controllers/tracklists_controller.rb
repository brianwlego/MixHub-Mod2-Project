class TracklistsController < ApplicationController
    
    before_action :find_tracklist, only: [:show, :edit, :update, :destroy, :like]
    before_action :signed_in, only:[:new, :edit]
    def index
        @tracklists = Tracklist.all 
    end

    def show
    end

    def new
        @tracklist = Tracklist.new
        @artists = Artist.all
        @festivals = Festival.all 
    end

    def create
      @tracklist = Tracklist.new(tracklist_params)
      if @tracklist.valid?
        @tracklist.save
        redirect_to new_tracklist_song_path(@tracklist)
      else
        flash[:my_errors] = @tracklist.errors.full_messages
        redirect_to new_tracklist_path 
      end
    end

    def edit
    end

    def update
      #Valitdation Needs to be written
      @tracklist.update(tracklist_params)
    end

    def destroy
      @tracklist.destroy
      redirect_to tracklists_path
    end

    # def add_song_input_field
    #   @song_num = 1
    #   @song_num
    # end

    def like
      @tracklist.add_like
      @tracklist.save
      redirect_to tracklist_path(@tracklist)
    end

    private

    def tracklist_params
        params.require(:tracklist).permit(:name, :link, :img_url, :likes, :user_id, artist_attributes: [:name, :img_url], festival_attributes: [:date, :name, :location])
    end

    def find_tracklist
      @tracklist = Tracklist.find(params[:id])
    end

    def signed_in
      unless current_user
        flash[:my_errors] = "Please Log In to create a new tracklist"
        redirect_to new_user_session_path
      end
    end

end