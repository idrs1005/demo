class AccountController < ApplicationController

  def index
    @session = Session.new
  end

  def edit
    @patient = Paciente.find(session[:current_user_id])
  end

  def update
    @patient = Paciente.find(session[:current_user_id])
    if @patient.update(usuario: params[:account][:usuario])
      render 'patient'
    else
      render 'edit'
    end
  end

  def patient
    @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @patient != nil
      session[:current_user_id] = @patient.id
      render 'patient'
    else
      flash[:error] = "Invalid user/email combination"
      render 'index'
    end
  end

end
