class AccountController < ApplicationController

  def index
  end

  def login
    if user = Paciente.find_by(usuario: params[:usuario], password: params[:password])
      redirect_to account_patient_path(user)
    else
      render 'index'
    end
  end

end
