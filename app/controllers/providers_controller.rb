class ProvidersController < ApplicationController

    def index
        @providers = Provider.all
    end

    def new
        @provider = Provider.new
    end

    def create
        @provider = Provider.new(provider_params)
        if @provider.save
            redirect_to provider_path(@provider)
        else
            render 'new'
        end
    end

    def show
        @provider = Provider.find(params[:id])
    end

    def edit
        @provider = Provider.find(params[:id])
    end

    def update
        @provider = Provider.find(params[:id])
        @provider.update(provider_params)
        redirect_to provider_path(@provider)
    end

    private

    def provider_params
        params.require(:provider).permit(:name, :phone, :location)
    end
end

