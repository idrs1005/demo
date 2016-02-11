class AccountController < ApplicationController

  def index
  end

  def login
    if user = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
      redirect_to account_patient_path(user)
    else
      render 'index'
    end
  end

end
