class SignupsController < ApplicationController
    def create
        signup = Signup.create!(signup_params)
        render json: signup.activity, status: :created
    end

    private

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

    def render_unprocessable_entity_response()
        render json: {  "errors": ["validation errors"] }, status: :unprocessable_entity
    end
end
