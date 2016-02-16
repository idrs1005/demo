class AccountController < ApplicationController

  def index
    @session = Session.new
  end

  def edit
    @patient = params[:user]
  end

  def patient
    @session = Session.new(params.permit(:authenticity_token), params[:account].permit[:usuario])
    @session.save

    @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @patient != nil
      @user = @patient

    else
      render 'index' , notice: 'Invalid email/password combination'
    end
  end

end
