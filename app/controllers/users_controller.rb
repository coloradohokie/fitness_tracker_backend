class UsersController < ApplicationController
    skip_before_action :authenticate, only: [:create]

    def create
        @user = User.create!(
            first_name: params[:first_name],
            last_name: params[:last_name],
            username: params[:username],
            password: params[:password]
        )
        render json: { user:  @user }, status: 201
    end
end
