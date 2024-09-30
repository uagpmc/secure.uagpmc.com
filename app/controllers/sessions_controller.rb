class SessionsController < ApplicationController
    def new
        render :new
    end

    def create
        user_info = request.env['omniauth.auth']

        render plain: user_info.to_json
    end
end