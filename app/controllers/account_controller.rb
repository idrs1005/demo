class AccountController < ApplicationController

  def index
    @session = Session.new
  end

  def edit
    @patient = params[:user]
  end

  def patient
    @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @patient != nil
      @user = @patient
      @session = Session.new(params[:authenticity_token].permit(:authenticity_token, :@patient.id))
      @session.save
      redirect_to account_patient_path
    else
      render 'index' , notice: 'Invalid email/password combination'
    end
  end

end
