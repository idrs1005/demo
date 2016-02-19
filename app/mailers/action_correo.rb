class ActionCorreo < ApplicationMailer
  default from: 'isaac@flecharoja.com'

  def bienvenido_email(user)
    @user = user
    mail(to: @user.email, subject: 'Registro satisfactorio')
  end

end
