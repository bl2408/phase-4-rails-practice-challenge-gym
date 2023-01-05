class MembershipsController < ApplicationController

    def create

        Membership.create!(membership_params)

    end


    def membership_params

        params.permit(:gym_id, :client_id, :charge)

    end

end
