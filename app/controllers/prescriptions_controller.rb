class PrescriptionsController < ApplicationController
    before_action :authenticate_patient
    before_action :set_prescription, only: [:show, :edit, :update, :destroy]
    
    def index
        @prescriptions = current_patient.prescriptions
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
            redirect_to prescription_path(@prescription)
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        @prescription.update(prescription_params)
        redirect_to prescription_path(@prescription)
    end

    def destroy
        @prescription.destroy
        redirect_to prescriptions_path
    end

    def called_in
        @prescriptions = current_patient.prescriptions.called_in
    end

    private

    def set_prescription
        @prescription = Prescription.find(params[:id])
    end

    def prescription_params
        params.require(:prescription).permit(:patient_id, :medication_id, :provider_id, :prescribed_date, provider_attributes: [:name, :phone, :location])
    end
end
