class PasswordMailer < ApplicationMailer
  def password_resets
    mail to: params[:user].email
  end
end
