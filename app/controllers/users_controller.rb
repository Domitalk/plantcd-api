class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :update]

    def profile
        render json: { user: user_logged_in }, status: :accepted
    end

    def create 
        @user = User.create(user_params)

        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: @user, jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
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
        params.require(:user).permit(:user_name, :first_name, :middle_name, :last_name, :password)
    end 
end 