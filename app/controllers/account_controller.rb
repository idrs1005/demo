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
    if sexo == "true"
        sex = 'Masculino'
    end
    if @patient.update(nombre: nombre, apellido1: apellido1, apellido2: apellido2, fecha_nacimiento: fecha_nacimiento, identificacion: identificacion, ocupacion: ocupacion, sexo: sex)
      redirect_to account_patient_path
    else
      render 'edit'
    end
  end

  def patient
    if session[:current_user_id] != nil
      @patient = Paciente.find(session[:current_user_id])
      render 'patient'
    else
      @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
      if @patient != nil
        session[:current_user_id] = @patient.id
        render 'patient'
      else
        flash[:error] = "Invalid user/email combination"
        render 'index'
      end

    end

  end

  private

  def sexo
      params[:account][:autolyse]
  end

  def fecha_nacimiento
    evento = params[:account]
    Date.new evento["fecha_nacimiento(1i)"].to_i, evento["fecha_nacimiento(2i)"].to_i, evento["fecha_nacimiento(3i)"].to_i
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
