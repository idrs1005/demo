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
      @session = Session.new(params[:authenticity_token].permit(:authenticity_token, :@patient.id))
      @session.save
      @user = @patient
    else
      render 'index' , notice: 'Invalid email/password combination'
    end
  end

end
