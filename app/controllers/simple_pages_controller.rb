class SimplePagesController < ApplicationController
  def index
    @products = Product.limit(5)
    @featured_product = Product.first
  end

  def landing_page
    @products = Product.limit(2)
    @featured_product = Product.first
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
    ActionMailer::Base.mail(from: @email,
        to: 'justin.taj@gmail.com',
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
    #ActionMailer::Base.mail(from: 'from@domain.com', to: 'to@domain.com', subject: "Welcome to My Awesome Site", body: 'I am the email body.').deliver_now
  end
end
