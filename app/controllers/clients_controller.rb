class ClientsController < ApplicationController
   
    def index
        client = Client.all
        render json: client, status: :ok
    end
    
    def show
        client = Client.find_by(id: params[:id])
        if client
            render json: client         
           else
               render json: {error: :not_found}, status: :not_found
           end
    end
end
