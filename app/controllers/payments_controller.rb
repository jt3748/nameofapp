class PaymentsController < ApplicationController
  protect_from_forgery
  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: (@product.price*100).to_i, # amount in cents, again
        currency: "usd",
        source: token,
        description: params[:stripeEmail],
        receipt_email: @user.email
      )

      if charge.paid
        Order.create(product_id: @product.id , user_id: @user.id, total: @product.price)
        flash[:success] = "Your payment was processed successfully!" #(remember, create is a combination of new and save):
      end


    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}. Please try again."
    end
    redirect_to products_path
  end
end
