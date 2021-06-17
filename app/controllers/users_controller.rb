class UsersController < ApplicationController
    def create 
        @user = User.create(user_params)
        render json: @user.to_json
    end 

    def show 
        @user = User.find(params[:id])
        render json: @user.to_json
    end 

    private 
    def user_params 
        params.permit(:user_name, :first_name, :middle_name, :last_name)
    end 
end 