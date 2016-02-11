class RegisterController < ApplicationController
  def index
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(params[:register].permit(:nombre, :apellido1, :apellido2, :email, :usuario, :password))
    @usuario.save
    redirect_to register_path    # esta ruta se explica a continuación
  end

end
