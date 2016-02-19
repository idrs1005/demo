class ActionCorreo < ApplicationMailer
  default from: 'isaac@flecharoja.com'

  def bienvenido_email(user)
    @user = user
    mail(to: @user.email, subject: 'Enviando correos con ruby')
  end

end
