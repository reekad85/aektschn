class UserMailer < ApplicationMailer
	default from: "r.kadhum@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'r.kadhum@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def send_new_user_message(user)
    @user = user
    mail(:from => 'hello@specialtea.com',
    	:to => user.email, 
    	:subject => "Welcome to Specialtea!")
  end
end