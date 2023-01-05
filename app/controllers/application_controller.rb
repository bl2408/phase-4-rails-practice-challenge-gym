class ApplicationController < ActionController::API

    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    private

    def render_invalid_response e
        render json: { error: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    
    def render_not_found_response e
        render json: { error: "#{e.instance_values["model"]} not found"}, status: :not_found
    end

end
