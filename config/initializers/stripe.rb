if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_0l7W4RyuKr2djd9OtD50ocx4',
    :secret_key => 'sk_test_sn48uhtJv9sNsktImE7eS3ic'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]