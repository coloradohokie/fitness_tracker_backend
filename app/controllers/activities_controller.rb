class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all
        render json: @activities
    end

    def create
        @activity = Activity.create(activity_params)
        render json: @activity, status: 200
    end

    private
    def activity_params
        params.permit(:user_id, :name, :date, :distance, :duration)
    end

end
