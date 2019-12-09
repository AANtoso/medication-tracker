class PatientsController < ApplicationController
    def index
        render 'patients/show'
    end
    
    def new
        @patient = Patient.new
    end

    def create
        @patient = Patient.new(patient_params)
        if @patient.save
            session[:patient_id] = @patient.id
            redirect_to prescriptions_path
        else
            render 'new'
        end
    end

    def show
        @patient = Patient.find_by_id(params[:id])
    end

    private

    def user_params
        params.require(:patient).permit(:username, :email, :password)
    end
end
