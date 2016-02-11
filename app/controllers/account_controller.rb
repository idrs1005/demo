class AccountController < ApplicationController

  def index
  end

  def login
    user = Paciente.find_by(params[:usuarios], params[:password])
    if user
      redirect_to account_patient_path(user)
    else
      render 'index'
    end
  end

end
