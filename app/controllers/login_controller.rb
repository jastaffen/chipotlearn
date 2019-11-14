class LoginController < ApplicationController
    def new
        render :layout => false
    end
    
    def create
        user = User.find_by(username: params[:username])
        
        if user && user.authenticate(params[:password])
            session[:username] = user.username
            redirect_to "/order"
        else
            flash[:errors] = ["Whoops Nope. Incorrect username or password."]
            redirect_to new_login_path	
        end
    end

    def destroy
        session[:username] = nil
        redirect_to "/order"
    end

end