class UserMailer < ApplicationMailer
	default from: "hello@specialtea.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'r.kadhum@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Specialtea"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end
end