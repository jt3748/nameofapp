class UserMailer < ApplicationMailer
  default from: "justin.taj@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'justin.taj@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end
