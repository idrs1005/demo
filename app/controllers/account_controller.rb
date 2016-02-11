class AccountController < ApplicationController

  def index
  end

  def login
    if @user
      redirect_to account_patient_path(@user)
    else
      redirect_to account_path
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @user = Paciente.find_by(params[:usuario], params[:password])
  end

end
