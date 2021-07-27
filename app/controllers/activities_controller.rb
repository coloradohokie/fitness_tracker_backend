class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all
        act_list = []
        @activities.map { |activity| 
            item = {}
            user = User.find(activity.user_id)
            item[:date] = activity.date
            item[:user_id] = activity.user_id
            item[:distance] = activity.distance
            item[:duration] = activity.duration
            item[:name] = activity.name
            item[:username] = user.username
            act_list.push(item)
        }
        render json: act_list
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
