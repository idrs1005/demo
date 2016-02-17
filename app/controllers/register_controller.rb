class RegisterController < ApplicationController
  def index
    @paciente = Paciente.new
  end

  def create
    @paciente = Paciente.new(params[:register].permit(:nombre, :apellido1, :apellido2, :identificacion, :email, :usuario, :password))
    if @paciente.save
      redirect_to account_path
    else
      render action: 'index'
    end
  end

end
