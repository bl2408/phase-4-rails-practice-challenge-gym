class ClientsController < ApplicationController

    def index
        render json: Client.all
    end

    def show
        client = Client.find(params[:id])
        render json: client
    end

    def update
        gym = Client.update(params[:id], client_params)
        render json: gym, status: :ok
    end

    private

    def client_params
        params.permit(:name, :age)
    end


end
