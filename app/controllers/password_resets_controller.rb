class PasswordResetsController < ApplicationController
  def new
  end

  def create
    if (user = User.find_by(email: params[:email]))
     PasswordMailer.with(user: user, 
     token: user.generates_token_for(:password_reset)).password_reset.deliver_later
    end

    redirect_to root_path, notice: "Check your email to reset your password."
  end

  def edit
  end

  def update
    
  end
end