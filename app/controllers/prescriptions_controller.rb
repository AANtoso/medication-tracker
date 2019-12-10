class PrescriptionsController < ApplicationController
    before_action :authenticate_patient
    
    def index
        @prescriptions = Prescription.all
    end

    def new
        if params[:provider_id] && @provider = Provider.find_by_id(params[:provider_id])
            @prescription = @provider.prescriptions.build
        else 
            @prescription = Prescription.new
        end
    end

    def create
        @prescription = current_patient.prescriptions.build(prescription_params)
        if @prescription.save
            redirect_to presctiption_path(@prescription)
        else
            render 'new'
        end
    end

    def show
        @prescription = Prescription.find(params[:id])
    end

    def edit
        @prescription = Prescription.find(params[:id])
    end

    def update
        @prescription = Prescription.find(params[:id])
        @prescription.update(prescription_params)
        redirect_to prescription_path(@prescription)
    end

    def destroy
        @prescription = Prescription.find(params[:id])
        @prescription.destroy
        redirect_to prescription_path
    end

    private

    def prescription_params
        params.require(:prescription).permit(:medication_id, :provider_id, :prescribed_date)
    end
end
