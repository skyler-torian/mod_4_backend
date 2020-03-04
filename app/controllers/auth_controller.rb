class AuthController < ApplicationController

    def fake_create
        user = User.find_by(username: params["username"])
        render json: user
    end

    def create 
    end 

end
