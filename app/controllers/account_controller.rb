class AccountController < ApplicationController

  def index
  end

  def edit
    @patient = Paciente.find(params[:paciente][:id])
  end

  def patient
    @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @patient != nil
      @user = @patient
    else
      render 'index' , notice: 'Invalid email/password combination'
    end
  end

end
