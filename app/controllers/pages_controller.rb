class PagesController < ApplicationController
    def home
    end

    def order
    end

    def checkout
        @user = User.find_by(username: session[:username])
        @user.bag.dishes.destroy_all
        render :layout => false
    end
end