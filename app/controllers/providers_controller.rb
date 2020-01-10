class ProvidersController < ApplicationController
    before_action :set_provider, only: [:show, :edit, :update]

    def index
        # if !params[:name].blank?
        #     @provider = Provider.where(name: params[:name])
        #     # @provider = Provider.where('name LIKE ?', "%#{params[:name]}%")
        # else
            @providers = current_patient.providers.search(params[:search])
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
    end

    def edit
    end

    def update
        @provider.update(provider_params)
        redirect_to provider_path(@provider)
    end

    private

    def set_provider
        @provider = Provider.find(params[:id])
    end

    def provider_params
        params.require(:provider).permit(:name, :phone, :location, :search)
    end
end

