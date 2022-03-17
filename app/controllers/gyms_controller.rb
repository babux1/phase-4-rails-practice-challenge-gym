class GymsController < ApplicationController
    def index
        gyms = Gym.all
        render json: gyms, status: :ok
    end

    def show
        gym = Gym.find_by(id: params[:id])
        if gym
        render json: gym         
       else
           render json: {error: :not_found}, status: :not_found
       end
    end

    def delete
        gym = Gym.find_by(id: params[:id])
        if gym
            gym.destroy
            head :not_content
        else
            render json: { error: "Gym not found" }, status: :not_found
        end
       
    end
end
