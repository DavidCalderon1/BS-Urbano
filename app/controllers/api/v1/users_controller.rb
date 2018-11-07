class Api::V1::UsersController < ApplicationController
    def index
        results = {'results' => User.all}
    	render json: results
    end
end