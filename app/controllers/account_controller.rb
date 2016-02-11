class AccountController < ApplicationController

  def index
  end

  def login
    @user = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @user != nil
      redirect_to account_patient_path(@user)
    else
      render 'index' , notice: 'Invalid email/password combination'
    end
  end

  def paciente
    @user = Paciente.find(params[:format])
  end

end
