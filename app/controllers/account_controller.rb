class AccountController < ApplicationController

  def index
    @session = Session.new
  end

  def edit
    @patient = params[:user]
  end

  def patient
    @patient = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @patient != nil
      @user = @patient
      @session = Session.new(params.permit(:authenticity_token, [:account][:usuario]))
      @session.save
      render 'patient'
    else
      flash[:notice] = "Invalid user/email combination"
      render 'index'
    end
  end

end
