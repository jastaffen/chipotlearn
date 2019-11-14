class ApiController < ApplicationController
    skip_before_action :verify_authenticity_token

    def form
        render :layout => false
    end

    def location
        plussed_string = Api.add_plus(params)
        @chipotle_hash = Api.hash_boo(plussed_string)
        byebug
        redirect_to "/api/select"
    end

    def select
        
    end

end