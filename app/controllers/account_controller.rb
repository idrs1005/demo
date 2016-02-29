class AccountController < ApplicationController

  def index
    @session = Session.new
  end

  def edit
    @patient = Paciente.find(session[:current_user_id])
  end

  def update
    @patient = Paciente.find(session[:current_user_id])
    mydate = fecha_nacimiento
    sex = 'Femenino'
    if sexo
        sex = 'Masculino'
    end
    if @patient.update(nombre: nombre, apellido1: nombre, apellido2: apellido2, identificacion: identificacion, ocupacion: ocupacion, sexo: sex)
      render 'patient'
    else
      render 'edit'
    end
  end

  def patient
    @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @patient != nil
      session[:current_user_id] = @patient.id
      render 'patient'
    else
      flash[:error] = "Invalid user/email combination"
      render 'index'
    end
  end

  private

  def sexo
      params[:account][:autolyse]
  end

  def fecha_nacimiento
    DateTime.new(params[:account]["fecha_nacimiento(1i)"] ,params[:account]["fecha_nacimiento(2i)"],params[:account]["fecha_nacimiento(13i)"])
  end

  def nombre
    params[:account][:nombre]
  end

  def apellido1
    params[:account][:apellido1]
  end

  def apellido2
    params[:account][:apellido2]
  end

  def identificacion
    params[:account][:identificacion]
  end

  def ocupacion
    params[:account][:ocupacion]
  end

end
