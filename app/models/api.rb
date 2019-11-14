require 'json'
require 'rest-client'
class Api < ApplicationRecord

    def self.add_plus(params)
        params[:location].gsub(/[" "]/, '+')
    end
    
    def self.hash_boo(search)
        respond = RestClient.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=chipotle&location=#{search}&radius=2000&key=AIzaSyC9TLYuMZWNy4LVGGcGNP2Lpc60i02VKjY")
        full_hash = JSON.parse(respond)
        full_hash
    end

    


end