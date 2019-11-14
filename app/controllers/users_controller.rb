class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
        render :layout => false
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:username] = @user.username
            @bag = Bag.create(net_total: 0, user: @user)
            redirect_to "/order"
            
        else   
            flash[:messages] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end
    
    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end