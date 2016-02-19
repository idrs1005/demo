class ActionCorreo < ApplicationMailer
  default from: 'soporte@pandatechla.com'

  def bienvenido_email(user)
    @user = user
    mail(to: @user.email, subject: 'Registro satisfactorio')
  end

end
