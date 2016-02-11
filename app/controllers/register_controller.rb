class RegisterController < ApplicationController
  def index
    @paciente = Paciente.new
  end

  def create
    @paciente = Paciente.new(params[:register].permit(:nombre, :apellido1, :apellido2, :email, :usuario, :password))
    @paciente.save
    redirect_to register_path    # esta ruta se explica a continuación
  end

end
