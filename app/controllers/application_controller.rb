class ApplicationController < ActionController::Base

    helper_method :current_patient, :logged_in?, :authenticate_patient

    private

    def current_patient
        @current_patient ||= Patient.find_by(id: session[:patient_id]) if session[:patient_id]
    end

    def logged_in
        !!current_patient
    end

    def authenticate_patient
        if !logged_in
            redirect_to root_path
        end
    end
end
