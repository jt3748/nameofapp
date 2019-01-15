if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_ov9oFKfCJJa5m3lbZlDC6TSG', # you can now reference to this with Rails.configuration.stripe[:publishable_key]
    secret_key: 'sk_test_lE94kQ3nWGHYD9dXOrqKEHgP'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
