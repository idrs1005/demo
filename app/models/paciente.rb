class Paciente < ActiveRecord::Base

  validates :email , presence: true #, confirmation: true
  validates :password , presence: true , confirmation: true
  validates :password_confirmation, presence: { message: " es requerida"}
  #validates :email_confirmation, presence: { message: " es requerido"}

  # Validamos en una expresion regular nuestro email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }

  # Validamos que el identificador tenga entre 8 a 12 caracteres
  validates :identificacion, length: { is: 9 , message: "debe tener 9 caracteres (102340567)"}

  # Validamos que el identificador solo sea numerico
  validates :identificacion, numericality: { only_integer: true }

  # Validamos que el email sea unico
  validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :usuario, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

end
