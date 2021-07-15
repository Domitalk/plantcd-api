class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create 
        @user = User.create(user_params)
        render json: @user
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user.to_json
    end 

    def index 
        @users = User.all 
        render json: @users.to_json 
    end 

    private 
    def user_params 
        params.permit(:user_name, :first_name, :middle_name, :last_name, :password)
    end 
end 