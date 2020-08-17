class TracklistsController < ApplicationController
    
    before_action :find_tracklist, only: [:show, :edit, :update, :destroy]
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
      #Validation Needs to be written

      @tracklist = Tracklist.create(tracklist_params)

        redirect_to tracklist_path(@tracklist)
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

    private

    def tracklist_params
        params.require(:tracklist).permit(
        :name,
        :festival_id,
        :user_id,
        :link,
        :img_url,
        :likes,
        artist_attributes: [:name]
        )
    end

    def find_tracklist
      @tracklist = Tracklist.find(params[:id])
    end

end