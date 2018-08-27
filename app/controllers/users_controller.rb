class UsersController < ApplicationController
    
    def show
        #@user = User.find(params[:id])
        @user = User.includes(:posts).where("id = ?", params[:id]).first
    end
end
