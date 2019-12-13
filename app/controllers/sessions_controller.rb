class SessionsController < ApplicationController
  def index
  end

  def create
    @patient = Patient.find_by(username: params[:patient][:username])
    if @patient && @patient.authenticate(params[:patient][:password])
        session[:patient_id] = @patient.id
        redirect_to prescriptions_path
    else 
      @patient = Patient.new
        render 'new'
        # flash[:error] = "No profile matches that information. Please login with different credentials."
    end
  end

  def new
    @patient = Patient.new
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def omniauth
    @patient = Patient.from_omniauth(auth)
    @patient.save
    session[:patient_id] = @patient.id
    redirect_to prescriptions_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
