Rails.configuration.stripe = {
  publishable_key: ENV["STRIPE_PUBLIC_KEY"],
  secret_key: ENV["STRIPE_SECRET_KEY"]
}

Stripe.api_key = "sk_test_BQokikJOvBiI2HlWgH4olfQ2"
