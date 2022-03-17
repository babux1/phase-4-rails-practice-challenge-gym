class MembershipsController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    
    def create
        byebug
        memberships = Membership.create(membership_params)
        render json: memberships, status: :created
    end

    private

    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end
    
    def invalid_references(invalid) 
        render json: {errors:invalid.record.errors}, status: :unprocessable_entity

    end
end
