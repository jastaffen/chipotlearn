class BagsController < ApplicationController
    def show
        @user = User.find_by(username: session[:username])
        @bag = Bag.find(params[:id])
        render :layout => false
    end
end