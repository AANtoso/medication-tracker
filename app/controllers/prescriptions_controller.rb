class PrescriptionsController < ApplicationController
    before_action :authenticate_patient
    
    def index
        @prescriptions = Presctiption.all
    end

    def new
        
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def presctiption_params
    end
end
