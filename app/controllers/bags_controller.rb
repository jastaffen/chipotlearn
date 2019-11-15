class BagsController < ApplicationController
    def show
        @user = User.find_by(username: session[:username])
        @bag = Bag.find(params[:id])
        @net = @bag.net_total_calculation
    end
end