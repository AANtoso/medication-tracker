class SessionsController < ApplicationController
  def index
  end

  def create
    @patient = Patient.find_by(username: params[:patient][:username])
    if @patient && @patient.authenticate(params[:patient][:password])
        session[:patient_id] = @patient.id
        redirect_to medications_path
    else
        render 'new'
    end
  end

  def new
    @patient = Patient.new
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private

  def auth
    
  end

end
