class AccountController < ApplicationController

  require "uri"
  require "net/http"

  def index
  end

  def login
    @user = Paciente.find_by(usuario: params[:account][:usuario], password: params[:account][:password])
    if @user != nil
      params = @user
      x = Net::HTTP.post_form(URI.parse('http://192.168.1.129:3000/account/patient'), params)
      puts x.body
    else
      render 'index' , notice: 'Invalid email/password combination'
    end
  end

  def patient
    @user = Paciente.find(params[:format])
  end

end
