class UserMailer < ApplicationMailer
	default from: "hello@specialtea.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'r.kadhum@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_up'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

