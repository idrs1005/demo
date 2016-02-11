class AccountController < ApplicationController

  def index
  end

  def login
    @user = Paciente.find_by(params[:usuario], params[:password])
    @paciente = Paciente.find(@user)
    if @user
      redirect_to account_patient_path(@paciente)
    else
      redirect_to account_path
    end
  end

end
