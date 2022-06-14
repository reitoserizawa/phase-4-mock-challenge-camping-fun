class SignupsController < ApplicationController

    def index
        render json: Signup.all, status: :ok
    end

    def show
        signup = find_signup
        render json: signup, status: :found
    end

    def create
        new_signup = Signup.create!(signup_params)
        render json: new_signup.activity, status: :created
    end

    private

    def find_signup
        Signup.find(params[:id])
    end

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

end
