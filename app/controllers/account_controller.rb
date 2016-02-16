class AccountController < ApplicationController

  def index
    @session = Session.new
  end

  def edit
    @patient = params[:user]
  end

  def patient
    #@patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    #if @patient != nil
     # @user = @patient
      @session = Session.new(params.permit(:authenticity_token, 1))
      @session.save
    #else
     # render 'index' , notice: 'Invalid email/password combination'
    #end
  end

end
