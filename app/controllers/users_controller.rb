class UsersController < ApplicationController
    def show
        @user = User.all.find(params[:id])
    end
end