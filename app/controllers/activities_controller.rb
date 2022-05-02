class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        render json: activity
    end

    private

    def render_not_found_response
        render json: { "error": "Activity not found" }, status: :not_found
    end

end
