class ActionCorreo < ApplicationMailer
  default from: 'soporte@pandametics.com'

  def bienvenido_email(user)
    @user = user
    mail(to: @user.email, subject: 'Registro satisfactorio')
  end

end
