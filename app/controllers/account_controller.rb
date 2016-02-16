class AccountController < ApplicationController

  def index
    @session = Session.new
  end

  def edit
    @patient = Paciente.find(params[:user])
  end

  def patient
    @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @patient != nil
      @user = @patient
      @session = Session.new(authenticity_token: params[:authenticity_token], usuario: params[:account][:usuario])
      @session.save
      render 'patient'
    else
      flash[:error] = "Invalid user/email combination"
      render 'index'
    end
  end

end
