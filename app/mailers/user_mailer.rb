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
    mail(to: @user.email, subject: 'Sign Up Confirmation')
  end
end

