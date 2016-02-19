class AccountController < ApplicationController

  def index
    @session = Session.new
  end

  def edit
    @patient = Paciente.find(params[:user])
  end

  def patient
    @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @patient != nil
      @user = @patient
      account[:current_user_id] = @user.id
      render 'patient'
    else
      flash[:error] = "Invalid user/email combination"
      render 'index'
    end
  end

end
