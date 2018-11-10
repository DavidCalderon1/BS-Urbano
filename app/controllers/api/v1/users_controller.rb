class Api::V1::UsersController < Api::V1::BaseController
    def index
        # results = {'results' => User.all}
        # render json: results
        @users  = User.all
    end
    
    def show
        @user = User.find(params[:id])
    end
end